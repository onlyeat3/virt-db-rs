/*
SQLyog Ultimate
MySQL - 10.6.5-MariaDB-1:10.6.5+maria~focal : Database - poem_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`user_id`,`role_id`,`created_by`,`created_at`) values 
('010CI0AP52HNOHMBS6L4K025U6','00TV876BOIIDCR9H7JA1KNNIGH','00UHKP89CT1NDVFN6Q0E8LO7NT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-16 10:55:53'),
('010CI0AP52HNOHOBS6L5GPCM8S','00TV876BOIIDCR9H7JA1KNNIGH','00UHIKGRA7JVIEU25NNGI8KTJU','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-16 10:55:53'),
('010CI0AP52HNOHQBS6L5VPMMK3','00TV876BOIIDCR9H7JA1KNNIGH','00UHIKGRA7JVIF025NNH39CPMT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-16 10:55:53'),
('010CI0AP52HNOHSBS6L59PM7HS','00TV876BOIIDCR9H7JA1KNNIGH','00UHIKGRA7JVIF425NNGE80K1B','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-16 10:55:53'),
('0111BB2PHLAMHHIOI1HA9JQOGS','00UGHLA3A1DR0GC7TLKCA32KK6','00UHKP89CT1NDVFN6Q0E8LO7NT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:04'),
('0111BB2PHLAMHHKOI1HABIOIQR','00UGHLA3A1DR0GC7TLKCA32KK6','00VTAOT7820JCROC5CSKO4PVT5','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:04'),
('0111BB2PHLAMHHMOI1HA6MH9U0','00UGHLA3A1DR0GC7TLKCA32KK6','00VTAPCFV0MIB252HAA89LBD46','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:04'),
('0111BB2PHLAMHHOOI1H9PETKMP','00UGHLA3A1DR0GC7TLKCA32KK6','00VTAQD9Q3RFU5HT172L8SMDVF','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:04'),
('0111BB2PHLAMHHQOI1HB8T70U3','00UGHLA3A1DR0GC7TLKCA32KK6','00VTAQSSFRU2961VV33V1C6R9R','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:04'),
('0111BBCR25A439MQJ52JHDQ0DO','00VTAKQKRVNAJUMV71GTK0PPHE','00UHKP89CT1NDVFN6Q0E8LO7NT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:25'),
('0111BBCR25A439OQJ52JUBEV84','00VTAKQKRVNAJUMV71GTK0PPHE','00VTAOT7820JCROC5CSKO4PVT5','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:25'),
('0111BBCR25A439QQJ52GME6Q72','00VTAKQKRVNAJUMV71GTK0PPHE','00VTAPCFV0MIB252HAA89LBD46','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:25'),
('0111BBCR25A439SQJ52J7C82E7','00VTAKQKRVNAJUMV71GTK0PPHE','00VTAQD9Q3RFU5HT172L8SMDVF','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:25'),
('0111BBCR25A439UQJ52I73I2SO','00VTAKQKRVNAJUMV71GTK0PPHE','00VTAQSSFRU2961VV33V1C6R9R','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:25'),
('0111BBGL1FD5O7V0F4L73106PU','00VUQVF8J9GNPMHOQJVNJ2O6P5','00UHIKGRA7JVIF025NNH39CPMT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:31:32'),
('0111BL7ITTG99T43HBHCJI28MM','00TV87DDOBJPU75J4TGUOC3NNG','00UHKP89CT1NDVFN6Q0E8LO7NT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:42:09'),
('0111BL7ITTG99T63HBHCS66H94','00TV87DDOBJPU75J4TGUOC3NNG','00UHIKGRA7JVIEU25NNGI8KTJU','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:42:09'),
('0111BL7ITTG99T83HBHCF6BAUR','00TV87DDOBJPU75J4TGUOC3NNG','00UHIKGRA7JVIF025NNH39CPMT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:42:09'),
('0111BL7ITTG99TA3HBHC48MS6L','00TV87DDOBJPU75J4TGUOC3NNG','00UHIKGRA7JVIF225NNJ4OH4Q4','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:42:09'),
('0111BL7ITTG99TC3HBHER4LQ2P','00TV87DDOBJPU75J4TGUOC3NNG','00UHIKGRA7JVIF425NNGE80K1B','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 14:42:09'),
('0111HJC7SQTBUV7Q7VOVFSC59M','00UT9J78PSU5QJRE3HSDUG94R2','00UHKP89CT1NDVFN6Q0E8LO7NT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:09:51'),
('0111HJC7SQTBUV9Q7VOS9K3N2V','00UT9J78PSU5QJRE3HSDUG94R2','00VTAOT7820JCROC5CSKO4PVT5','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:09:51'),
('0111HJC7SQTBUVBQ7VOSBSIO53','00UT9J78PSU5QJRE3HSDUG94R2','00VTAPCFV0MIB252HAA89LBD46','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:09:51'),
('0111HJC7SQTBUVDQ7VOS59SJF8','00UT9J78PSU5QJRE3HSDUG94R2','00VTAQD9Q3RFU5HT172L8SMDVF','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:09:51'),
('0111HJC7SQTBUVFQ7VOV2RDAF0','00UT9J78PSU5QJRE3HSDUG94R2','00VTAQSSFRU2961VV33V1C6R9R','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:09:51'),
('0112NB59LSHFUO8VT54AIUDHOG','0112NB59924PHJ8VT54A5SMQLC','00UHKP89CT1NDVFN6Q0E8LO7NT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-02 16:09:04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;