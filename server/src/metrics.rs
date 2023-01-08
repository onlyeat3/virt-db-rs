use std::net::{Ipv4Addr, SocketAddrV4};
use std::time::Duration;
use metrics::{
    increment_counter,
};
use metrics_exporter_prometheus::PrometheusBuilder;
use metrics_util::MetricKindMask;
use crate::sys_config::VirtDBConfig;

pub fn enable_metrics() {
    // tracing_subscriber::fmt::init();

    let builder = PrometheusBuilder::new();
    let addr = SocketAddrV4::new(Ipv4Addr::new(127, 0, 0, 1), 19091);
    builder
        .with_http_listener(addr)
        .idle_timeout(
            MetricKindMask::COUNTER | MetricKindMask::HISTOGRAM,
            Some(Duration::from_secs(10)),
        )
        .install()
        .expect("failed to install Prometheus recorder");

    // We register these metrics, which gives us a chance to specify a description for them.  The
    // Prometheus exporter records this description and adds it as HELP text when the endpoint is
    // scraped.
    //
    // Registering metrics ahead of using them is not required, but is the only way to specify the
    // description of a metric.
    // describe_counter!("tcp_server_loops", "The iterations of the TCP server event loop so far.");
    // describe_histogram!(
    //     "tcp_server_loop_delta_secs",
    //     "The time taken for iterations of the TCP server event loop."
    // );

    // let clock = Clock::new();
    // let mut last = None;

    // increment_counter!("idle_metric");
    // gauge!("testing", 42.0);

    // Loop over and over, pretending to do some work.
    // loop {
    //     increment_counter!("tcp_server_loops", "system" => "foo");
    //
    //     if let Some(t) = last {
    //         let delta: Duration = clock.now() - t;
    //         histogram!("tcp_server_loop_delta_secs", delta, "system" => "foo");
    //     }
    //
    //     let increment_gauge = thread_rng().gen_bool(0.75);
    //     if increment_gauge {
    //         increment_gauge!("lucky_iterations", 1.0);
    //     } else {
    //         decrement_gauge!("lucky_iterations", 1.0);
    //     }
    //
    //     last = Some(clock.now());
    //
    //     thread::sleep(Duration::from_millis(750));
    // }
}