/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 90620
 Source Host           : localhost:5432
 Source Catalog        : device_log
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90620
 File Encoding         : 65001

 Date: 08/12/2020 00:25:50
*/


-- ----------------------------
-- Sequence structure for device_start_loader_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."device_start_loader_id_seq";
CREATE SEQUENCE "public"."device_start_loader_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1124
CACHE 1;

-- ----------------------------
-- Sequence structure for device_status_record_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."device_status_record_id_seq";
CREATE SEQUENCE "public"."device_status_record_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 29392
CACHE 1;

-- ----------------------------
-- Sequence structure for hibernate_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hibernate_sequence";
CREATE SEQUENCE "public"."hibernate_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 27
CACHE 1;

-- ----------------------------
-- Sequence structure for log_file_record_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."log_file_record_id_seq";
CREATE SEQUENCE "public"."log_file_record_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 46821
CACHE 1;

-- ----------------------------
-- Sequence structure for screen_record_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."screen_record_id_seq";
CREATE SEQUENCE "public"."screen_record_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1250
CACHE 1;

-- ----------------------------
-- Sequence structure for screen_start_loader_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."screen_start_loader_id_seq";
CREATE SEQUENCE "public"."screen_start_loader_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 2;

-- ----------------------------
-- Sequence structure for screen_status_record_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."screen_status_record_id_seq";
CREATE SEQUENCE "public"."screen_status_record_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 18
CACHE 2;

-- ----------------------------
-- Table structure for code_column_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."code_column_config";
CREATE TABLE "public"."code_column_config" (
  "column_id" int4 NOT NULL,
  "table_name" varchar(255) COLLATE "pg_catalog"."default",
  "column_name" varchar(255) COLLATE "pg_catalog"."default",
  "column_type" varchar(255) COLLATE "pg_catalog"."default",
  "dict_name" varchar(255) COLLATE "pg_catalog"."default",
  "extra" varchar(255) COLLATE "pg_catalog"."default",
  "form_show" bit(1),
  "form_type" varchar(255) COLLATE "pg_catalog"."default",
  "key_type" varchar(255) COLLATE "pg_catalog"."default",
  "list_show" bit(1),
  "not_null" bit(1),
  "query_type" varchar(255) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "date_annotation" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for code_gen_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."code_gen_config";
CREATE TABLE "public"."code_gen_config" (
  "config_id" int8 NOT NULL,
  "table_name" varchar(255) COLLATE "pg_catalog"."default",
  "author" varchar(255) COLLATE "pg_catalog"."default",
  "cover" bit(1),
  "module_name" varchar(255) COLLATE "pg_catalog"."default",
  "pack" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "api_path" varchar(255) COLLATE "pg_catalog"."default",
  "prefix" varchar(255) COLLATE "pg_catalog"."default",
  "api_alias" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for device_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."device_info";
CREATE TABLE "public"."device_info" (
  "id" int8 NOT NULL,
  "device_no" varchar(255) COLLATE "pg_catalog"."default",
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "device_path" varchar(255) COLLATE "pg_catalog"."default",
  "device_status" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for device_start_loader
-- ----------------------------
DROP TABLE IF EXISTS "public"."device_start_loader";
CREATE TABLE "public"."device_start_loader" (
  "id" int8 NOT NULL DEFAULT nextval('device_start_loader_id_seq'::regclass),
  "boot_time" int8,
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "terminating_time" timestamp(6)
)
;

-- ----------------------------
-- Table structure for device_status_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."device_status_record";
CREATE TABLE "public"."device_status_record" (
  "id" int8 NOT NULL DEFAULT nextval('device_status_record_id_seq'::regclass),
  "appl" varchar(255) COLLATE "pg_catalog"."default",
  "begin_time" timestamp(6),
  "date" date,
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "duration" int8,
  "end_time" timestamp(6),
  "modes" varchar(255) COLLATE "pg_catalog"."default",
  "parameters" json,
  "probe" varchar(255) COLLATE "pg_catalog"."default",
  "probe_sn" varchar(255) COLLATE "pg_catalog"."default",
  "run_state" varchar(255) COLLATE "pg_catalog"."default",
  "status" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for log_file_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."log_file_record";
CREATE TABLE "public"."log_file_record" (
  "id" int8 NOT NULL DEFAULT nextval('log_file_record_id_seq'::regclass),
  "date_time" timestamp(6),
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "log" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS "public"."mnt_app";
CREATE TABLE "public"."mnt_app" (
  "app_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "upload_path" varchar(255) COLLATE "pg_catalog"."default",
  "deploy_path" varchar(255) COLLATE "pg_catalog"."default",
  "backup_path" varchar(255) COLLATE "pg_catalog"."default",
  "port" int2,
  "start_script" varchar(255) COLLATE "pg_catalog"."default",
  "deploy_script" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS "public"."mnt_database";
CREATE TABLE "public"."mnt_database" (
  "db_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "jdbc_url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "user_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "pwd" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS "public"."mnt_deploy";
CREATE TABLE "public"."mnt_deploy" (
  "deploy_id" int4 NOT NULL,
  "app_id" int4,
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."mnt_deploy_history";
CREATE TABLE "public"."mnt_deploy_history" (
  "history_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "app_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "deploy_date" date NOT NULL,
  "deploy_user" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ip" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "deploy_id" int4
)
;

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS "public"."mnt_deploy_server";
CREATE TABLE "public"."mnt_deploy_server" (
  "deploy_id" int4 NOT NULL,
  "server_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS "public"."mnt_server";
CREATE TABLE "public"."mnt_server" (
  "server_id" int4 NOT NULL,
  "account" varchar(255) COLLATE "pg_catalog"."default",
  "ip" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "port" int2,
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for screen_probe_times_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."screen_probe_times_record";
CREATE TABLE "public"."screen_probe_times_record" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "device_date" varchar(255) COLLATE "pg_catalog"."default",
  "begin_time" int8,
  "end_time" int8,
  "duration" int8,
  "probe" varchar(255) COLLATE "pg_catalog"."default",
  "device_time" varchar(255) COLLATE "pg_catalog"."default",
  "device_no" varchar(255) COLLATE "pg_catalog"."default",
  "modes" varchar(255) COLLATE "pg_catalog"."default",
  "run_state" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for screen_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."screen_record";
CREATE TABLE "public"."screen_record" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT nextval('screen_record_id_seq'::regclass),
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "device_date" varchar(255) COLLATE "pg_catalog"."default",
  "eng_text" varchar(255) COLLATE "pg_catalog"."default",
  "chi_text" varchar(255) COLLATE "pg_catalog"."default",
  "status_text" varchar(255) COLLATE "pg_catalog"."default",
  "device_no" varchar(255) COLLATE "pg_catalog"."default",
  "device_time" varchar(255) COLLATE "pg_catalog"."default",
  "probe" varchar(255) COLLATE "pg_catalog"."default",
  "probe_info" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for screen_start_loader
-- ----------------------------
DROP TABLE IF EXISTS "public"."screen_start_loader";
CREATE TABLE "public"."screen_start_loader" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT nextval('screen_start_loader_id_seq'::regclass),
  "boot_time" int8,
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "start_time" int8,
  "terminating_time" int8,
  "device_no" varchar(255) COLLATE "pg_catalog"."default",
  "device_date" varchar(255) COLLATE "pg_catalog"."default",
  "shut_end_time" varchar(255) COLLATE "pg_catalog"."default",
  "shut_time" int4
)
;

-- ----------------------------
-- Table structure for screen_status_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."screen_status_record";
CREATE TABLE "public"."screen_status_record" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT nextval('screen_status_record_id_seq'::regclass),
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "device_date" varchar(255) COLLATE "pg_catalog"."default",
  "begin_time" int8,
  "end_time" int8,
  "duration" int8,
  "probe" varchar(255) COLLATE "pg_catalog"."default",
  "run_state" varchar(255) COLLATE "pg_catalog"."default",
  "device_time" varchar(255) COLLATE "pg_catalog"."default",
  "device_no" varchar(255) COLLATE "pg_catalog"."default",
  "modes" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
  "dept_id" int8 NOT NULL,
  "pid" int4,
  "sub_count" int4,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "dept_sort" int4,
  "enabled" bit(1),
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict";
CREATE TABLE "public"."sys_dict" (
  "dict_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_detail";
CREATE TABLE "public"."sys_dict_detail" (
  "detail_id" int4 NOT NULL,
  "dict_id" int4,
  "label" varchar(255) COLLATE "pg_catalog"."default",
  "value" varchar(255) COLLATE "pg_catalog"."default",
  "dict_sort" int2,
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job";
CREATE TABLE "public"."sys_job" (
  "job_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "enabled" bit(1),
  "job_sort" int2,
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_log";
CREATE TABLE "public"."sys_log" (
  "log_id" int4 NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "log_type" varchar(255) COLLATE "pg_catalog"."default",
  "method" varchar(255) COLLATE "pg_catalog"."default",
  "params" text COLLATE "pg_catalog"."default",
  "request_ip" varchar(255) COLLATE "pg_catalog"."default",
  "time" int4,
  "username" varchar(255) COLLATE "pg_catalog"."default",
  "address" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(255) COLLATE "pg_catalog"."default",
  "exception_detail" text COLLATE "pg_catalog"."default",
  "create_time" date
)
;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "menu_id" int4 NOT NULL,
  "pid" int4,
  "sub_count" int2,
  "type" int2,
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "menu_sort" int2,
  "icon" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "i_frame" bit(1),
  "cache" bit(1),
  "hidden" bit(1),
  "permission" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_quartz_job";
CREATE TABLE "public"."sys_quartz_job" (
  "job_id" int4 NOT NULL,
  "bean_name" varchar(255) COLLATE "pg_catalog"."default",
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "is_pause" bit(1),
  "job_name" varchar(255) COLLATE "pg_catalog"."default",
  "method_name" varchar(255) COLLATE "pg_catalog"."default",
  "params" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "person_in_charge" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "sub_task" varchar(255) COLLATE "pg_catalog"."default",
  "pause_after_failure" bit(1),
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_quartz_log";
CREATE TABLE "public"."sys_quartz_log" (
  "log_id" int4 NOT NULL,
  "bean_name" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "exception_detail" text COLLATE "pg_catalog"."default",
  "is_success" bit(1),
  "job_name" varchar(255) COLLATE "pg_catalog"."default",
  "method_name" varchar(255) COLLATE "pg_catalog"."default",
  "params" varchar(255) COLLATE "pg_catalog"."default",
  "time" int4
)
;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "role_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "level" int8,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "data_scope" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_roles_depts";
CREATE TABLE "public"."sys_roles_depts" (
  "role_id" int4 NOT NULL,
  "dept_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_roles_menus";
CREATE TABLE "public"."sys_roles_menus" (
  "menu_id" int4 NOT NULL,
  "role_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "user_id" int4 NOT NULL,
  "dept_id" int4,
  "username" varchar(255) COLLATE "pg_catalog"."default",
  "nick_name" varchar(255) COLLATE "pg_catalog"."default",
  "gender" varchar(255) COLLATE "pg_catalog"."default",
  "phone" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "avatar_name" varchar(255) COLLATE "pg_catalog"."default",
  "avatar_path" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "is_admin" bit(1),
  "enabled" int4,
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "pwd_reset_time" date,
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_users_jobs";
CREATE TABLE "public"."sys_users_jobs" (
  "user_id" int4 NOT NULL,
  "job_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_users_roles";
CREATE TABLE "public"."sys_users_roles" (
  "user_id" int4 NOT NULL,
  "role_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for tool_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."tool_alipay_config";
CREATE TABLE "public"."tool_alipay_config" (
  "config_id" int4 NOT NULL,
  "app_id" varchar(255) COLLATE "pg_catalog"."default",
  "charset" varchar(255) COLLATE "pg_catalog"."default",
  "format" varchar(255) COLLATE "pg_catalog"."default",
  "gateway_url" varchar(255) COLLATE "pg_catalog"."default",
  "notify_url" varchar(255) COLLATE "pg_catalog"."default",
  "private_key" text COLLATE "pg_catalog"."default",
  "public_key" text COLLATE "pg_catalog"."default",
  "return_url" varchar(255) COLLATE "pg_catalog"."default",
  "sign_type" varchar(255) COLLATE "pg_catalog"."default",
  "sys_service_provider_id" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tool_email_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."tool_email_config";
CREATE TABLE "public"."tool_email_config" (
  "config_id" int4 NOT NULL,
  "from_user" varchar(255) COLLATE "pg_catalog"."default",
  "host" varchar(255) COLLATE "pg_catalog"."default",
  "pass" varchar(255) COLLATE "pg_catalog"."default",
  "port" varchar(255) COLLATE "pg_catalog"."default",
  "user" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tool_local_storage
-- ----------------------------
DROP TABLE IF EXISTS "public"."tool_local_storage";
CREATE TABLE "public"."tool_local_storage" (
  "storage_id" int4 NOT NULL,
  "real_name" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "suffix" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "size" varchar(100) COLLATE "pg_catalog"."default",
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_time" date
)
;

-- ----------------------------
-- Table structure for tool_qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."tool_qiniu_config";
CREATE TABLE "public"."tool_qiniu_config" (
  "config_id" int4 NOT NULL,
  "access_key" text COLLATE "pg_catalog"."default",
  "bucket" varchar(255) COLLATE "pg_catalog"."default",
  "host" varchar(255) COLLATE "pg_catalog"."default",
  "secret_key" text COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "zone" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for tool_qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS "public"."tool_qiniu_content";
CREATE TABLE "public"."tool_qiniu_content" (
  "content_id" int4 NOT NULL,
  "bucket" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "size" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "suffix" varchar(255) COLLATE "pg_catalog"."default",
  "update_time" date
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."device_start_loader_id_seq"
OWNED BY "public"."device_start_loader"."id";
SELECT setval('"public"."device_start_loader_id_seq"', 1126, true);
ALTER SEQUENCE "public"."device_status_record_id_seq"
OWNED BY "public"."device_status_record"."id";
SELECT setval('"public"."device_status_record_id_seq"', 29394, true);
SELECT setval('"public"."hibernate_sequence"', 29, true);
ALTER SEQUENCE "public"."log_file_record_id_seq"
OWNED BY "public"."log_file_record"."id";
SELECT setval('"public"."log_file_record_id_seq"', 46823, true);
ALTER SEQUENCE "public"."screen_record_id_seq"
OWNED BY "public"."screen_record"."id";
SELECT setval('"public"."screen_record_id_seq"', 1252, true);
SELECT setval('"public"."screen_start_loader_id_seq"', 4, true);
SELECT setval('"public"."screen_status_record_id_seq"', 20, true);

-- ----------------------------
-- Primary Key structure for table code_column_config
-- ----------------------------
ALTER TABLE "public"."code_column_config" ADD CONSTRAINT "code_column_config_pkey" PRIMARY KEY ("column_id");

-- ----------------------------
-- Primary Key structure for table code_gen_config
-- ----------------------------
ALTER TABLE "public"."code_gen_config" ADD CONSTRAINT "code_gen_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table device_info
-- ----------------------------
ALTER TABLE "public"."device_info" ADD CONSTRAINT "device_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table device_start_loader
-- ----------------------------
ALTER TABLE "public"."device_start_loader" ADD CONSTRAINT "device_start_loader_device_name_start_time_key" UNIQUE ("device_name", "start_time");
ALTER TABLE "public"."device_start_loader" ADD CONSTRAINT "device_time" UNIQUE ("device_name", "start_time");

-- ----------------------------
-- Primary Key structure for table device_start_loader
-- ----------------------------
ALTER TABLE "public"."device_start_loader" ADD CONSTRAINT "device_start_loader_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table device_status_record
-- ----------------------------
ALTER TABLE "public"."device_status_record" ADD CONSTRAINT "device_status_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table log_file_record
-- ----------------------------
ALTER TABLE "public"."log_file_record" ADD CONSTRAINT "log_file_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table mnt_app
-- ----------------------------
ALTER TABLE "public"."mnt_app" ADD CONSTRAINT "mnt_app_pkey" PRIMARY KEY ("app_id");

-- ----------------------------
-- Primary Key structure for table mnt_database
-- ----------------------------
ALTER TABLE "public"."mnt_database" ADD CONSTRAINT "mnt_database_pkey" PRIMARY KEY ("db_id");

-- ----------------------------
-- Primary Key structure for table mnt_deploy
-- ----------------------------
ALTER TABLE "public"."mnt_deploy" ADD CONSTRAINT "mnt_deploy_pkey" PRIMARY KEY ("deploy_id");

-- ----------------------------
-- Primary Key structure for table mnt_deploy_history
-- ----------------------------
ALTER TABLE "public"."mnt_deploy_history" ADD CONSTRAINT "mnt_deploy_history_pkey" PRIMARY KEY ("history_id");

-- ----------------------------
-- Primary Key structure for table mnt_deploy_server
-- ----------------------------
ALTER TABLE "public"."mnt_deploy_server" ADD CONSTRAINT "mnt_deploy_server_pkey" PRIMARY KEY ("deploy_id", "server_id");

-- ----------------------------
-- Primary Key structure for table mnt_server
-- ----------------------------
ALTER TABLE "public"."mnt_server" ADD CONSTRAINT "mnt_server_pkey" PRIMARY KEY ("server_id");

-- ----------------------------
-- Primary Key structure for table screen_record
-- ----------------------------
ALTER TABLE "public"."screen_record" ADD CONSTRAINT "screen_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table screen_start_loader
-- ----------------------------
ALTER TABLE "public"."screen_start_loader" ADD CONSTRAINT "screen_start_loader_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table screen_status_record
-- ----------------------------
ALTER TABLE "public"."screen_status_record" ADD CONSTRAINT "screen_status_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE "public"."sys_dict" ADD CONSTRAINT "sys_dict_pkey" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_detail
-- ----------------------------
ALTER TABLE "public"."sys_dict_detail" ADD CONSTRAINT "sys_dict_detail_pkey" PRIMARY KEY ("detail_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "public"."sys_job" ADD CONSTRAINT "sys_job_pkey" PRIMARY KEY ("job_id");

-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE "public"."sys_log" ADD CONSTRAINT "sys_log_pkey" PRIMARY KEY ("log_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_quartz_job
-- ----------------------------
ALTER TABLE "public"."sys_quartz_job" ADD CONSTRAINT "sys_quartz_job_pkey" PRIMARY KEY ("job_id");

-- ----------------------------
-- Primary Key structure for table sys_quartz_log
-- ----------------------------
ALTER TABLE "public"."sys_quartz_log" ADD CONSTRAINT "sys_quartz_log_pkey" PRIMARY KEY ("log_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_roles_depts
-- ----------------------------
ALTER TABLE "public"."sys_roles_depts" ADD CONSTRAINT "sys_roles_depts_pkey" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_roles_menus
-- ----------------------------
ALTER TABLE "public"."sys_roles_menus" ADD CONSTRAINT "sys_roles_menus_pkey" PRIMARY KEY ("menu_id", "role_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_users_jobs
-- ----------------------------
ALTER TABLE "public"."sys_users_jobs" ADD CONSTRAINT "sys_users_jobs_pkey" PRIMARY KEY ("user_id", "job_id");

-- ----------------------------
-- Primary Key structure for table sys_users_roles
-- ----------------------------
ALTER TABLE "public"."sys_users_roles" ADD CONSTRAINT "sys_users_roles_pkey" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Primary Key structure for table tool_alipay_config
-- ----------------------------
ALTER TABLE "public"."tool_alipay_config" ADD CONSTRAINT "tool_alipay_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table tool_email_config
-- ----------------------------
ALTER TABLE "public"."tool_email_config" ADD CONSTRAINT "tool_email_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table tool_local_storage
-- ----------------------------
ALTER TABLE "public"."tool_local_storage" ADD CONSTRAINT "tool_local_storage_pkey" PRIMARY KEY ("storage_id");

-- ----------------------------
-- Primary Key structure for table tool_qiniu_config
-- ----------------------------
ALTER TABLE "public"."tool_qiniu_config" ADD CONSTRAINT "tool_qiniu_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table tool_qiniu_content
-- ----------------------------
ALTER TABLE "public"."tool_qiniu_content" ADD CONSTRAINT "tool_qiniu_content_pkey" PRIMARY KEY ("content_id");
