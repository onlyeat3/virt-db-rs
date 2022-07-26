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
/*Data for the table `sys_role_api` */

insert  into `sys_role_api`(`id`,`role_id`,`api`,`method`,`created_by`,`created_at`) values 
('0100U744E024HCAM4UI1HBT8MS','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ89MM4UI0UPT8UH','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-basic','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ89OM4UI1DST5FU','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-menAuth','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ89QM4UI0II2LRJ','00UHIKGRA7JVIEU25NNGI8KTJU','system_auth','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ89SM4UI0O2NQHE','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-user','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ89UM4UI14KUL8I','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-basic-menu','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8A0M4UI14KNV21','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8A2M4UI2BFT7HH','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8A4M4UI31H2B17','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8A6M4UI0DE89NV','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8A8M4UI28OHCLD','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AAM4UI2T31PBP','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-dict','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8ACM4UI18IOOUR','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/type/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AEM4UI00NTNS0','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/type/get_all','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AGM4UI1BEP4KE','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/type/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AIM4UI29FQGPH','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/type/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AKM4UI295PDDE','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/type/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AMM4UI2Q31TBE','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/type/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AOM4UI04367PJ','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/data/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AQM4UI2EG39J3','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/data/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8ASM4UI0876KBM','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/data/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8AUM4UI0TLO1BM','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/data/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8B0M4UI38ERB1J','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/data/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8B2M4UI08SCM2L','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/get_auth_list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8B4M4UI3T8BC2O','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8B6M4UI0GBKHAT','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8B8M4UI179859P','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/add','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BAM4UI0PHIDP2','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BCM4UI2UPRU20','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/reset_passwd','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BEM4UI16BL1B1','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/update_passwd','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BGM4UI1IURM39','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/fresh_token','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BIM4UI34EM7RM','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/update_avatar','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BKM4UI16BOPPC','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/get_profile','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BMM4UI2U9LMJM','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/update_profile','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BOM4UI22MMM6E','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-dept','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BQM4UI1KBGBEV','00UHIKGRA7JVIEU25NNGI8KTJU','system/dept/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BSM4UI3C8NEOE','00UHIKGRA7JVIEU25NNGI8KTJU','system/dept/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8BUM4UI28H2FGP','00UHIKGRA7JVIEU25NNGI8KTJU','system/dept/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8C0M4UI2LOM497','00UHIKGRA7JVIEU25NNGI8KTJU','system/dept/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8C2M4UI291ORGQ','00UHIKGRA7JVIEU25NNGI8KTJU','system/dept/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8C4M4UI2S8SVTF','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-post','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8C6M4UI1O89VVL','00UHIKGRA7JVIEU25NNGI8KTJU','system/post/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8C8M4UI1200LD5','00UHIKGRA7JVIEU25NNGI8KTJU','system/post/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CAM4UI1C4E6FI','00UHIKGRA7JVIEU25NNGI8KTJU','system/post/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CCM4UI111PJ9T','00UHIKGRA7JVIEU25NNGI8KTJU','system/post/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CEM4UI3NJ59LS','00UHIKGRA7JVIEU25NNGI8KTJU','system/post/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CGM4UI05D025B','00UHIKGRA7JVIEU25NNGI8KTJU','M-sys-role','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CIM4UI0QET4IJ','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CKM4UI38K7801','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CMM4UI3Q7232R','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8COM4UI097OO1E','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CQM4UI1R8I7S7','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/set_data_scope','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CSM4UI3GALOVH','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/change_status','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8CUM4UI1BG2ACI','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8D0M4UI2U5PIEI','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/cancel_auth_user','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8D2M4UI3M55LQE','00UHIKGRA7JVIEU25NNGI8KTJU','system/role/add_auth_user','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8D4M4UI0JDOCE3','00UHIKGRA7JVIEU25NNGI8KTJU','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8D6M4UI2UGJAHV','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8D8M4UI12FGN3B','00UHIKGRA7JVIEU25NNGI8KTJU','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8DAM4UI2J7USPF','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8DCM4UI3VJI4M1','00UHIKGRA7JVIEU25NNGI8KTJU','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U744EUUJ8DEM4UI3B8126S','00UHIKGRA7JVIEU25NNGI8KTJU','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:20:58'),
('0100U76E8JRJ55AOE6AI66BQPN','00UHIKGRA7JVIF025NNH39CPMT','M-sys','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55COE6AGHQ8I8O','00UHIKGRA7JVIF025NNH39CPMT','M-sys-basic','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55EOE6AHEC2STT','00UHIKGRA7JVIF025NNH39CPMT','M-sys-basic-menu','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55GOE6AICH0649','00UHIKGRA7JVIF025NNH39CPMT','M-sys-dict','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55IOE6AH8SNO9G','00UHIKGRA7JVIF025NNH39CPMT','M-sys-menAuth','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55KOE6AJND0RSB','00UHIKGRA7JVIF025NNH39CPMT','system_auth','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55MOE6AIC91MHI','00UHIKGRA7JVIF025NNH39CPMT','M-sys-user','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55OOE6AJDLHQOM','00UHIKGRA7JVIF025NNH39CPMT','M-sys-role','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55QOE6AJFHCHLO','00UHIKGRA7JVIF025NNH39CPMT','system/menu/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55SOE6AG17PMBO','00UHIKGRA7JVIF025NNH39CPMT','system/menu/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ55UOE6AGAF87ME','00UHIKGRA7JVIF025NNH39CPMT','system/dict/type/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ560OE6AJ1NVJ81','00UHIKGRA7JVIF025NNH39CPMT','system/dict/type/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ562OE6AI4ISCVI','00UHIKGRA7JVIF025NNH39CPMT','system/dict/data/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ564OE6AG3GFB1T','00UHIKGRA7JVIF025NNH39CPMT','system/menu/get_auth_list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ566OE6AIINLB4E','00UHIKGRA7JVIF025NNH39CPMT','system/user/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E8JRJ568OE6AH05C313','00UHIKGRA7JVIF025NNH39CPMT','system/user/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70D0OE6AIUADB8T','00UHIKGRA7JVIF025NNH39CPMT','system/user/reset_passwd','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70D2OE6AIFU6DIQ','00UHIKGRA7JVIF025NNH39CPMT','system/user/update_passwd','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70D4OE6AJ7T6FP7','00UHIKGRA7JVIF025NNH39CPMT','system/user/fresh_token','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70D6OE6AIGR9HBV','00UHIKGRA7JVIF025NNH39CPMT','system/user/update_avatar','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70D8OE6AITFBUKN','00UHIKGRA7JVIF025NNH39CPMT','system/user/get_profile','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DAOE6AJQVJ049','00UHIKGRA7JVIF025NNH39CPMT','system/user/update_profile','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DCOE6AJSTJ6B6','00UHIKGRA7JVIF025NNH39CPMT','M-sys-dept','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DEOE6AH54EBCA','00UHIKGRA7JVIF025NNH39CPMT','system/dept/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DGOE6AINO753B','00UHIKGRA7JVIF025NNH39CPMT','system/dept/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DIOE6AHGQ2J1Q','00UHIKGRA7JVIF025NNH39CPMT','system/dept/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DKOE6AHTE713R','00UHIKGRA7JVIF025NNH39CPMT','system/dept/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DMOE6AHGM0TCK','00UHIKGRA7JVIF025NNH39CPMT','system/dept/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DOOE6AIAABC9F','00UHIKGRA7JVIF025NNH39CPMT','M-sys-post','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DQOE6AJ5V0KO4','00UHIKGRA7JVIF025NNH39CPMT','system/post/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DSOE6AGNMOFGA','00UHIKGRA7JVIF025NNH39CPMT','system/post/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70DUOE6AJFKV9E7','00UHIKGRA7JVIF025NNH39CPMT','system/post/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70E0OE6AGND3CI2','00UHIKGRA7JVIF025NNH39CPMT','system/post/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70E2OE6AJ9PNVP6','00UHIKGRA7JVIF025NNH39CPMT','system/post/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70E4OE6AI83BVBU','00UHIKGRA7JVIF025NNH39CPMT','system/role/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70E6OE6AHHVS9ME','00UHIKGRA7JVIF025NNH39CPMT','system/role/get_by_id','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70E8OE6AGJIELHE','00UHIKGRA7JVIF025NNH39CPMT','system/role/add','POST','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EAOE6AGMKAQJA','00UHIKGRA7JVIF025NNH39CPMT','system/role/edit','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70ECOE6AJOQOPFP','00UHIKGRA7JVIF025NNH39CPMT','system/role/set_data_scope','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EEOE6AG5PHR6F','00UHIKGRA7JVIF025NNH39CPMT','system/role/delete','DELETE','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EGOE6AJRIEGVC','00UHIKGRA7JVIF025NNH39CPMT','system/role/cancel_auth_user','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EIOE6AIHEF97P','00UHIKGRA7JVIF025NNH39CPMT','system/role/add_auth_user','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EKOE6AISO91T7','00UHIKGRA7JVIF025NNH39CPMT','M-test','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EMOE6AJU8B5Q3','00UHIKGRA7JVIF025NNH39CPMT','M-test-datascope','','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EOOE6AINPDGJ0','00UHIKGRA7JVIF025NNH39CPMT','test/data_scope/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EQOE6AGOK6OC9','00UHIKGRA7JVIF025NNH39CPMT','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70ESOE6AJERN8OE','00UHIKGRA7JVIF025NNH39CPMT','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70EUOE6AJGK0HTT','00UHIKGRA7JVIF025NNH39CPMT','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70F0OE6AHMG1OIF','00UHIKGRA7JVIF025NNH39CPMT','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70F2OE6AISFIGQJ','00UHIKGRA7JVIF025NNH39CPMT','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U76E9EM70F4OE6AHU4PELJ','00UHIKGRA7JVIF025NNH39CPMT','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:03'),
('0100U7LUTTR6M79GH0FNB8PV7P','00UHIKGRA7JVIF425NNGE80K1B','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:35'),
('0100U7LUTTR6M7BGH0FKBIO2DB','00UHIKGRA7JVIF425NNGE80K1B','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:35'),
('0100U7LUTTR6M7DGH0FMF6LN6J','00UHIKGRA7JVIF425NNGE80K1B','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:35'),
('0100U7LUTTR6M7FGH0FLSH6KSJ','00UHIKGRA7JVIF425NNGE80K1B','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:35'),
('0100U7LUTTR6M7HGH0FKCV39T8','00UHIKGRA7JVIF425NNGE80K1B','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:35'),
('0100U7LUTTR6M7JGH0FMF3EQ3G','00UHIKGRA7JVIF425NNGE80K1B','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-03-07 10:21:35'),
('0111GV9NIPUDMVESPGCONAVCP8','00UHIKGRA7JVIF225NNJ4OH4Q4','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 17:47:55'),
('0111GV9NJ6PEK66SPGCO1L4MJI','00UHIKGRA7JVIF225NNJ4OH4Q4','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 17:47:55'),
('0111GV9NJ6PEK68SPGCO22QA2N','00UHIKGRA7JVIF225NNJ4OH4Q4','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 17:47:55'),
('0111GV9NJ6PEK6ASPGCOF7LVD4','00UHIKGRA7JVIF225NNJ4OH4Q4','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 17:47:55'),
('0111GV9NJ6PEK6CSPGCQ39COAK','00UHIKGRA7JVIF225NNJ4OH4Q4','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 17:47:55'),
('0111GV9NJ6PEK6ESPGCOBKG1TQ','00UHIKGRA7JVIF225NNJ4OH4Q4','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 17:47:55'),
('0111I9DB2UIB236R73V7FHLK52','00VTAPCFV0MIB252HAA89LBD46','M-test','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB238R73V4A5THSM','00VTAPCFV0MIB252HAA89LBD46','M-test-datascope','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23AR73V6LR4NPJ','00VTAPCFV0MIB252HAA89LBD46','test/data_scope/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23CR73V77U5QCC','00VTAPCFV0MIB252HAA89LBD46','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23ER73V4DIRMKR','00VTAPCFV0MIB252HAA89LBD46','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23GR73V7SQV988','00VTAPCFV0MIB252HAA89LBD46','system/user/change_dept','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23IR73V5KV6PL7','00VTAPCFV0MIB252HAA89LBD46','system/dept/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23KR73V41KJ9SN','00VTAPCFV0MIB252HAA89LBD46','system/role/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23MR73V7AT9KB8','00VTAPCFV0MIB252HAA89LBD46','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23OR73V4B8DV3V','00VTAPCFV0MIB252HAA89LBD46','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23QR73V733IVA2','00VTAPCFV0MIB252HAA89LBD46','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9DB2UIB23SR73V6DN8KDN','00VTAPCFV0MIB252HAA89LBD46','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:55'),
('0111I9F9M6PEGJOFFIJS2PNDLG','00VTAQD9Q3RFU5HT172L8SMDVF','M-test','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGJQFFIJSMHQ6HB','00VTAQD9Q3RFU5HT172L8SMDVF','M-test-datascope','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGJSFFIJS4A9R3Q','00VTAQD9Q3RFU5HT172L8SMDVF','test/data_scope/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGJUFFIJSHVGTTB','00VTAQD9Q3RFU5HT172L8SMDVF','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGK0FFIJVB6AGAN','00VTAQD9Q3RFU5HT172L8SMDVF','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGK2FFIJU287FUS','00VTAQD9Q3RFU5HT172L8SMDVF','system/user/change_dept','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGK4FFIJS08AL0I','00VTAQD9Q3RFU5HT172L8SMDVF','system/dept/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGK6FFIJUB973I1','00VTAQD9Q3RFU5HT172L8SMDVF','system/role/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGK8FFIJU2IC8BA','00VTAQD9Q3RFU5HT172L8SMDVF','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGKAFFIJVSKIEBA','00VTAQD9Q3RFU5HT172L8SMDVF','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGKCFFIJUS7VGE0','00VTAQD9Q3RFU5HT172L8SMDVF','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9F9M6PEGKEFFIJVRRARO2','00VTAQD9Q3RFU5HT172L8SMDVF','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:33:59'),
('0111I9GVJ3M5MJCRT9R6E4K4OJ','00VTAQSSFRU2961VV33V1C6R9R','M-test','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJERT9R59O4FKV','00VTAQSSFRU2961VV33V1C6R9R','M-test-datascope','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJGRT9R4K0LBFP','00VTAQSSFRU2961VV33V1C6R9R','test/data_scope/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJIRT9R7BT4VDJ','00VTAQSSFRU2961VV33V1C6R9R','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJKRT9R50HH2UL','00VTAQSSFRU2961VV33V1C6R9R','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJMRT9R6LJMJJR','00VTAQSSFRU2961VV33V1C6R9R','system/user/change_dept','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJORT9R59877CS','00VTAQSSFRU2961VV33V1C6R9R','system/dept/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJQRT9R5AOPIHS','00VTAQSSFRU2961VV33V1C6R9R','system/role/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJSRT9R644R2O4','00VTAQSSFRU2961VV33V1C6R9R','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MJURT9R7L910IP','00VTAQSSFRU2961VV33V1C6R9R','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MK0RT9R5BF9CRM','00VTAQSSFRU2961VV33V1C6R9R','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111I9GVJ3M5MK2RT9R6KP5G6S','00VTAQSSFRU2961VV33V1C6R9R','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 18:34:02'),
('0111KB447KECPO7Q02LDIVPS92','00VTAOT7820JCROC5CSKO4PVT5','M-test','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPO9Q02LC4JADEA','00VTAOT7820JCROC5CSKO4PVT5','M-test-datascope','','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPOBQ02LF4OUD6N','00VTAOT7820JCROC5CSKO4PVT5','test/data_scope/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPODQ02LEUVKTLT','00VTAOT7820JCROC5CSKO4PVT5','S-must-enabled','0','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPOFQ02LCB4UDG5','00VTAOT7820JCROC5CSKO4PVT5','system/user/change_role','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPOHQ02LDRMSUIA','00VTAOT7820JCROC5CSKO4PVT5','system/user/change_dept','PUT','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPOJQ02LF8I5H41','00VTAOT7820JCROC5CSKO4PVT5','system/dept/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPOLQ02LFQQEV75','00VTAOT7820JCROC5CSKO4PVT5','system/role/list','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPONQ02LFKO5KA5','00VTAOT7820JCROC5CSKO4PVT5','system/dict/data/get_by_type','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPOPQ02LCKMDQI6','00VTAOT7820JCROC5CSKO4PVT5','system/menu/get_routers','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPORQ02LFTCV5V0','00VTAOT7820JCROC5CSKO4PVT5','system/user/get_info','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('0111KB447KECPOTQ02LDTLPER6','00VTAOT7820JCROC5CSKO4PVT5','system/menu/get_all_enabled_menu_tree','GET','00TV87DDOBJPU75J4TGUOC3NNG','2022-04-01 19:45:41'),
('01143A853JVEC6I9362DODFP31','00UHKP89CT1NDVFN6Q0E8LO7NT','S-must-enabled','0','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC6K9362E40Q5MN','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC6M9362EGAPSMG','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-basic','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC6O9362CHM1208','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-basic-menu','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC6Q9362E4OBFNK','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC6S9362FEA9B3M','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC6U9362CAH3998','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC709362C00KJ9S','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/edit','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC729362CD3Q86D','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC749362FAUGG10','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-dict','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC769362EPB5NIH','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/type/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC789362E1P3S1F','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/type/get_all','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7A9362F9E8330','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/type/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7C9362D26I333','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/type/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7E9362EDTU33K','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/type/edit','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7G9362CFG9I06','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/type/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7I9362C8KSBJV','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/data/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7K9362C1G9PAM','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/data/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7M9362EDTAGV2','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/data/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7O9362CD39FD3','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/data/edit','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7Q9362DSU2CTS','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/data/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7S9362EIDUAFO','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-menAuth','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC7U9362CM3GDJK','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/get_auth_list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC809362EAP6JLO','00UHKP89CT1NDVFN6Q0E8LO7NT','system/api_db/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC829362CJC721J','00UHKP89CT1NDVFN6Q0E8LO7NT','system/api_db/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC849362EHB551E','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/update_log_cache_method','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC869362CL4AIP8','00UHKP89CT1NDVFN6Q0E8LO7NT','system_auth','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC889362FOIK62I','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-user','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8A9362FRVVDJT','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8C9362F3K4M2G','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/edit','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8E9362DDANV7S','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/add','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8G9362EIRV40T','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8I9362DO5ALSN','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/reset_passwd','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8K9362C58IB13','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/update_passwd','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8M9362ET6PKAP','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/fresh_token','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8O9362DD0P31R','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/update_avatar','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8Q9362D8H4QSR','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/get_profile','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8S9362FTSQ5N9','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/update_profile','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC8U9362EBF0GH5','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/change_status','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC909362FS9JGF0','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-dept','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC929362D48OKGM','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dept/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC949362EFTV8OL','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dept/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC969362CN3RRKR','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dept/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC989362EBEDD40','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dept/edit','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9A9362E71SNNC','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dept/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9C9362CPJHV7D','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-post','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9E9362EJPSSAU','00UHKP89CT1NDVFN6Q0E8LO7NT','system/post/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9G9362DPO1S0K','00UHKP89CT1NDVFN6Q0E8LO7NT','system/post/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9I9362FVG88QO','00UHKP89CT1NDVFN6Q0E8LO7NT','system/post/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9K9362C0VUJ82','00UHKP89CT1NDVFN6Q0E8LO7NT','system/post/edit','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9M9362DIO2RIN','00UHKP89CT1NDVFN6Q0E8LO7NT','system/post/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A853JVEC9O9362CGRI25F','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-role','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5C9362DSTO7IQ','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5E9362C38CVAO','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5G9362CEAOID7','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5I9362CV5OLD0','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/edit','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5K9362F37M9P1','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/set_data_scope','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5M9362EMBGQET','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/change_status','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5O9362EAPLTLC','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5Q9362E8N1GEP','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/cancel_auth_user','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5S9362CIU9D43','00UHKP89CT1NDVFN6Q0E8LO7NT','system/role/add_auth_user','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P5U9362CAO64G5','00UHKP89CT1NDVFN6Q0E8LO7NT','M-monitor','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P609362E16JEBH','00UHKP89CT1NDVFN6Q0E8LO7NT','M-monitor-logininfor','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P629362F8394NC','00UHKP89CT1NDVFN6Q0E8LO7NT','system/login-log/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P649362DO8LCGR','00UHKP89CT1NDVFN6Q0E8LO7NT','system/login-log/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P669362CFB49N2','00UHKP89CT1NDVFN6Q0E8LO7NT','system/login-log/clean','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P689362FV92HLV','00UHKP89CT1NDVFN6Q0E8LO7NT','M-monitor-operlog','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6A9362CA12HUE','00UHKP89CT1NDVFN6Q0E8LO7NT','system/oper_log/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6C9362D03PP8Q','00UHKP89CT1NDVFN6Q0E8LO7NT','system/oper_log/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6E9362CVVTTT9','00UHKP89CT1NDVFN6Q0E8LO7NT','system/oper_log/clean','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6G9362CMFDPG2','00UHKP89CT1NDVFN6Q0E8LO7NT','sys-operlog-query','button','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6I9362CCT39RR','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-online','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6K9362FBEUJHN','00UHKP89CT1NDVFN6Q0E8LO7NT','system/online/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6M9362C0L15DV','00UHKP89CT1NDVFN6Q0E8LO7NT','system/online/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6O9362FCM4HQG','00UHKP89CT1NDVFN6Q0E8LO7NT','M-sys-job','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6Q9362D5HEL4L','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6S9362ESNAHBB','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job/get_by_id','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P6U9362EM862EU','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job/change_status','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P709362DVHFNEO','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job/run_task_once','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P729362DGBISL9','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job/add','POST','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P749362CENCFGU','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job/edit','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P769362DLJATPK','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P789362CADRIGJ','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job_log/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7A9362F1OFT13','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job_log/delete','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7C9362CITDT2U','00UHKP89CT1NDVFN6Q0E8LO7NT','system/job_log/clean','DELETE','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7E9362CC1E5U4','00UHKP89CT1NDVFN6Q0E8LO7NT','M-monitor-server','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7G9362EEEOVSH','00UHKP89CT1NDVFN6Q0E8LO7NT','system/monitor/server','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7I9362D5OQTVR','00UHKP89CT1NDVFN6Q0E8LO7NT','M-test','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7K9362C01KCBN','00UHKP89CT1NDVFN6Q0E8LO7NT','M-test-datascope','','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7M9362FVMQH7U','00UHKP89CT1NDVFN6Q0E8LO7NT','test/data_scope/list','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7O9362DP0O7PF','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/change_role','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7Q9362CJ8DL43','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/change_dept','PUT','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7S9362F8TH1VF','00UHKP89CT1NDVFN6Q0E8LO7NT','system/dict/data/get_by_type','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P7U9362F5RL4BF','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/get_routers','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P809362E7K1FSQ','00UHKP89CT1NDVFN6Q0E8LO7NT','system/user/get_info','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P829362FIOV6SK','00UHKP89CT1NDVFN6Q0E8LO7NT','system/menu/get_all_enabled_menu_tree','GET','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59'),
('01143A8544I6P849362E58JJLS','00UHKP89CT1NDVFN6Q0E8LO7NT','S-button','button','00UT9J78PSU5QJRE3HSDUG94R2','2022-04-03 17:45:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
