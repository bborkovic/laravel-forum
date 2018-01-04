--------------------------------------------------------
--  File created - èetvrtak-sijeènja-04-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."CATEGORIES" 
   (	"ID" NUMBER(10,0), 
	"PARENT_ID" NUMBER(10,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"LEVEL" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MIGRATIONS
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."MIGRATIONS" 
   (	"ID" NUMBER(10,0), 
	"MIGRATION" VARCHAR2(255 BYTE), 
	"BATCH" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PASSWORD_RESETS
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."PASSWORD_RESETS" 
   (	"EMAIL" VARCHAR2(255 BYTE), 
	"TOKEN" VARCHAR2(255 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REPLIES
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."REPLIES" 
   (	"ID" NUMBER(10,0), 
	"THREAD_ID" NUMBER(10,0), 
	"BODY" VARCHAR2(500 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"USER_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLES
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."ROLES" 
   (	"ID" NUMBER(10,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLE_USER
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."ROLE_USER" 
   (	"ID" NUMBER(10,0), 
	"ROLE_ID" NUMBER(10,0), 
	"USER_ID" NUMBER(10,0), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table THREADS
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."THREADS" 
   (	"ID" NUMBER(10,0), 
	"CATEGORY_ID" NUMBER(10,0), 
	"USER_ID" NUMBER(10,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"REPLIES" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TICKET_DETAILS
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."TICKET_DETAILS" 
   (	"ID" NUMBER(10,0), 
	"USER_ID" NUMBER(10,0), 
	"TICKET_ID" NUMBER(10,0), 
	"ACTION" VARCHAR2(255 BYTE), 
	"ACTION_DESCRIPTION" VARCHAR2(255 BYTE), 
	"ATTACHED_FILES" VARCHAR2(255 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TICKETS
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."TICKETS" 
   (	"ID" NUMBER(10,0), 
	"TITLE" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(400 BYTE), 
	"USER_ID" NUMBER(10,0), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "LARAVELFORUM"."USERS" 
   (	"ID" NUMBER(10,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PASSWORD" VARCHAR2(255 BYTE), 
	"REMEMBER_TOKEN" VARCHAR2(100 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence CATEGORIES_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."CATEGORIES_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 17 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MIGRATIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."MIGRATIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 24 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPLIES_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."REPLIES_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 39 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ROLES_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."ROLES_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ROLE_USER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."ROLE_USER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence THREADS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."THREADS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TICKET_DETAILS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."TICKET_DETAILS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TICKETS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."TICKETS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USERS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LARAVELFORUM"."USERS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into LARAVELFORUM.CATEGORIES
SET DEFINE OFF;
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (1,null,'Drustvo',to_timestamp('30.12.17 17:34:52,109087000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 17:34:52,109087000','DD.MM.RR HH24:MI:SSXFF'),'root');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (2,1,'Politika',to_timestamp('30.12.17 17:36:31,313668000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 17:36:31,313668000','DD.MM.RR HH24:MI:SSXFF'),'forum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (3,1,'Nekretnine',to_timestamp('30.12.17 17:36:40,368230000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 17:36:40,368230000','DD.MM.RR HH24:MI:SSXFF'),'forum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (4,1,'Ljubav',to_timestamp('30.12.17 17:36:46,823109000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 17:36:46,823109000','DD.MM.RR HH24:MI:SSXFF'),'forum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (5,1,'Sport',to_timestamp('30.12.17 17:37:19,036005000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 17:37:19,036005000','DD.MM.RR HH24:MI:SSXFF'),'forum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (6,2,'HDZ',to_timestamp('30.12.17 17:37:58,948298000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 17:37:58,948298000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (7,2,'SDP',to_timestamp('30.12.17 17:38:06,419829000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 17:38:06,419829000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (8,3,'Kuæe',to_timestamp('30.12.17 19:11:44,398515000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:11:44,398515000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (9,3,'Vikendice',to_timestamp('30.12.17 19:11:52,606893000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:11:52,606893000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (10,3,'Stanovi',to_timestamp('30.12.17 19:12:01,389365000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:12:01,389365000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (11,4,'Veze',to_timestamp('30.12.17 19:12:25,290796000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:12:25,290796000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (12,4,'Brak',to_timestamp('30.12.17 19:12:30,287482000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:12:30,287482000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (13,4,'Razvod',to_timestamp('30.12.17 19:12:35,971201000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:12:35,971201000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (14,5,'Nogomet',to_timestamp('30.12.17 19:13:27,583198000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:13:27,583198000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (15,5,'Rukomet',to_timestamp('30.12.17 19:13:33,979119000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:13:33,979119000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
Insert into LARAVELFORUM.CATEGORIES (ID,PARENT_ID,NAME,CREATED_AT,UPDATED_AT,"LEVEL") values (16,5,'Rekreacija',to_timestamp('30.12.17 19:13:40,974653000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 19:13:40,974653000','DD.MM.RR HH24:MI:SSXFF'),'podforum');
REM INSERTING into LARAVELFORUM.MIGRATIONS
SET DEFINE OFF;
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (21,'2017_12_30_163022_add_column_to_categories',3);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (22,'2017_12_31_081122_create_replies_table',4);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (20,'2017_12_30_153141_create_categories_table',2);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (19,'2017_12_29_180703_create_threads_table',2);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (23,'2017_12_31_084140_add_column_to_threads',5);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (13,'2014_10_12_000000_create_users_table',1);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (14,'2014_10_12_100000_create_password_resets_table',1);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (15,'2017_12_22_175006_create_tickets_table',1);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (16,'2017_12_24_061709_create_roles_table',1);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (17,'2017_12_24_062007_create_role_users_table',1);
Insert into LARAVELFORUM.MIGRATIONS (ID,MIGRATION,BATCH) values (18,'2017_12_26_104620_create_ticket_details_table',1);
REM INSERTING into LARAVELFORUM.PASSWORD_RESETS
SET DEFINE OFF;
REM INSERTING into LARAVELFORUM.REPLIES
SET DEFINE OFF;
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (4,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:37,282139000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:37,282139000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (5,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:39,187313000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:39,187313000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (6,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:39,187313000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:39,187313000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (7,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (8,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (9,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (10,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:41,828583000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (11,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (12,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (13,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (14,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (15,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (16,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (17,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (18,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,252405000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (19,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (20,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (21,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (22,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (23,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (24,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (25,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (26,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (27,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (28,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (29,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (30,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (31,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (32,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (33,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (34,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 17:48:42,614111000','DD.MM.RR HH24:MI:SSXFF'),6);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (3,14,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',to_timestamp('31.12.17 09:21:10,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 09:21:10,000000000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (35,16,'Tko je bolji, Ronaldo ili Messi',to_timestamp('01.01.18 19:33:06,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:33:06,000000000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (36,17,'Tko je bolji , Modric ili Kross?',to_timestamp('01.01.18 19:34:46,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:34:46,000000000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (37,18,'Tko je bolji, Modric ili Kross?',to_timestamp('01.01.18 19:35:41,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:35:41,000000000','DD.MM.RR HH24:MI:SSXFF'),5);
Insert into LARAVELFORUM.REPLIES (ID,THREAD_ID,BODY,CREATED_AT,UPDATED_AT,USER_ID) values (38,19,'Tko je bolji, Modric ili Kross?',to_timestamp('01.01.18 19:36:30,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:36:30,000000000','DD.MM.RR HH24:MI:SSXFF'),5);
REM INSERTING into LARAVELFORUM.ROLES
SET DEFINE OFF;
Insert into LARAVELFORUM.ROLES (ID,NAME,DESCRIPTION,CREATED_AT,UPDATED_AT) values (1,'normal user','normal user',to_timestamp('29.12.17 18:37:36,994663000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('29.12.17 18:37:36,994663000','DD.MM.RR HH24:MI:SSXFF'));
Insert into LARAVELFORUM.ROLES (ID,NAME,DESCRIPTION,CREATED_AT,UPDATED_AT) values (2,'admin','admin',to_timestamp('29.12.17 18:37:47,967259000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('29.12.17 18:37:47,967259000','DD.MM.RR HH24:MI:SSXFF'));
Insert into LARAVELFORUM.ROLES (ID,NAME,DESCRIPTION,CREATED_AT,UPDATED_AT) values (3,'guest','guest',to_timestamp('29.12.17 18:37:57,227416000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('29.12.17 18:37:57,227416000','DD.MM.RR HH24:MI:SSXFF'));
Insert into LARAVELFORUM.ROLES (ID,NAME,DESCRIPTION,CREATED_AT,UPDATED_AT) values (4,'thread moderator','thread moderator',to_timestamp('29.12.17 18:38:16,130527000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('29.12.17 18:38:16,130527000','DD.MM.RR HH24:MI:SSXFF'));
Insert into LARAVELFORUM.ROLES (ID,NAME,DESCRIPTION,CREATED_AT,UPDATED_AT) values (5,'thread admin','thread admin',to_timestamp('29.12.17 18:38:26,819654000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('29.12.17 18:38:26,819654000','DD.MM.RR HH24:MI:SSXFF'));
REM INSERTING into LARAVELFORUM.ROLE_USER
SET DEFINE OFF;
Insert into LARAVELFORUM.ROLE_USER (ID,ROLE_ID,USER_ID,CREATED_AT,UPDATED_AT) values (6,1,5,to_timestamp('30.12.17 16:24:45,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 16:24:45,000000000','DD.MM.RR HH24:MI:SSXFF'));
REM INSERTING into LARAVELFORUM.THREADS
SET DEFINE OFF;
Insert into LARAVELFORUM.THREADS (ID,CATEGORY_ID,USER_ID,NAME,CREATED_AT,UPDATED_AT,REPLIES) values (14,6,5,'Ovo je novi thread u HDZ-u',to_timestamp('31.12.17 09:21:10,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('31.12.17 09:21:10,000000000','DD.MM.RR HH24:MI:SSXFF'),1);
Insert into LARAVELFORUM.THREADS (ID,CATEGORY_ID,USER_ID,NAME,CREATED_AT,UPDATED_AT,REPLIES) values (16,14,5,'Ronaldo ili Messi',to_timestamp('01.01.18 19:33:06,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:33:06,000000000','DD.MM.RR HH24:MI:SSXFF'),1);
Insert into LARAVELFORUM.THREADS (ID,CATEGORY_ID,USER_ID,NAME,CREATED_AT,UPDATED_AT,REPLIES) values (17,14,5,'Modric ili Kross?',to_timestamp('01.01.18 19:34:46,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:34:46,000000000','DD.MM.RR HH24:MI:SSXFF'),1);
Insert into LARAVELFORUM.THREADS (ID,CATEGORY_ID,USER_ID,NAME,CREATED_AT,UPDATED_AT,REPLIES) values (18,14,5,'Modric ili Kross?',to_timestamp('01.01.18 19:35:41,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:35:41,000000000','DD.MM.RR HH24:MI:SSXFF'),1);
Insert into LARAVELFORUM.THREADS (ID,CATEGORY_ID,USER_ID,NAME,CREATED_AT,UPDATED_AT,REPLIES) values (19,14,5,'Modric ili Kross?',to_timestamp('01.01.18 19:36:30,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.01.18 19:36:30,000000000','DD.MM.RR HH24:MI:SSXFF'),1);
REM INSERTING into LARAVELFORUM.TICKET_DETAILS
SET DEFINE OFF;
REM INSERTING into LARAVELFORUM.TICKETS
SET DEFINE OFF;
REM INSERTING into LARAVELFORUM.USERS
SET DEFINE OFF;
Insert into LARAVELFORUM.USERS (ID,NAME,EMAIL,PASSWORD,REMEMBER_TOKEN,CREATED_AT,UPDATED_AT) values (5,'boris','bborkovic@gmail.com','$2y$10$mBoxkfyMiqGUvMWZkLGYqOmz15EN3nqZ2PQJDCfSv5UsfZLMD4f0K',null,to_timestamp('30.12.17 16:24:45,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('30.12.17 16:24:45,000000000','DD.MM.RR HH24:MI:SSXFF'));
--------------------------------------------------------
--  DDL for Index REPLIES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."REPLIES_ID_PK" ON "LARAVELFORUM"."REPLIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USERS_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."USERS_EMAIL_UK" ON "LARAVELFORUM"."USERS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGRATIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."MIGRATIONS_ID_PK" ON "LARAVELFORUM"."MIGRATIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index THREADS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."THREADS_ID_PK" ON "LARAVELFORUM"."THREADS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CATEGORIES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."CATEGORIES_ID_PK" ON "LARAVELFORUM"."CATEGORIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TICKET_DETAILS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."TICKET_DETAILS_ID_PK" ON "LARAVELFORUM"."TICKET_DETAILS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROLE_USER_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."ROLE_USER_ID_PK" ON "LARAVELFORUM"."ROLE_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROLES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."ROLES_ID_PK" ON "LARAVELFORUM"."ROLES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PASSWORD_RESETS_EMAIL_INDEX
--------------------------------------------------------

  CREATE INDEX "LARAVELFORUM"."PASSWORD_RESETS_EMAIL_INDEX" ON "LARAVELFORUM"."PASSWORD_RESETS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USERS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."USERS_ID_PK" ON "LARAVELFORUM"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TICKETS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LARAVELFORUM"."TICKETS_ID_PK" ON "LARAVELFORUM"."TICKETS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger CATEGORIES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."CATEGORIES_ID_TRG" 
            before insert on categories
            for each row
                begin
            if :new.id is null then
                select categories_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."CATEGORIES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGRATIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."MIGRATIONS_ID_TRG" 
            before insert on migrations
            for each row
                begin
            if :new.id is null then
                select migrations_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."MIGRATIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REPLIES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."REPLIES_ID_TRG" 
            before insert on replies
            for each row
                begin
            if :new.id is null then
                select replies_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."REPLIES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ROLES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."ROLES_ID_TRG" 
            before insert on roles
            for each row
                begin
            if :new.id is null then
                select roles_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."ROLES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ROLE_USER_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."ROLE_USER_ID_TRG" 
            before insert on role_user
            for each row
                begin
            if :new.id is null then
                select role_user_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."ROLE_USER_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger THREADS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."THREADS_ID_TRG" 
            before insert on threads
            for each row
                begin
            if :new.id is null then
                select threads_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."THREADS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TICKET_DETAILS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."TICKET_DETAILS_ID_TRG" 
            before insert on ticket_details
            for each row
                begin
            if :new.id is null then
                select ticket_details_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."TICKET_DETAILS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TICKETS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."TICKETS_ID_TRG" 
            before insert on tickets
            for each row
                begin
            if :new.id is null then
                select tickets_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."TICKETS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LARAVELFORUM"."USERS_ID_TRG" 
            before insert on users
            for each row
                begin
            if :new.id is null then
                select users_id_seq.nextval into :new.id from dual;
            end if;
            end;
/
ALTER TRIGGER "LARAVELFORUM"."USERS_ID_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table ROLES
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."ROLES" ADD CONSTRAINT "ROLES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."ROLES" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLES" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLES" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGRATIONS
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."MIGRATIONS" ADD CONSTRAINT "MIGRATIONS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."MIGRATIONS" MODIFY ("BATCH" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."MIGRATIONS" MODIFY ("MIGRATION" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."MIGRATIONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table THREADS
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."THREADS" MODIFY ("REPLIES" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."THREADS" ADD CONSTRAINT "THREADS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."THREADS" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."THREADS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."THREADS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."THREADS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."THREADS" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."THREADS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPLIES
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."REPLIES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."REPLIES" ADD CONSTRAINT "REPLIES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."REPLIES" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."REPLIES" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."REPLIES" MODIFY ("BODY" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."REPLIES" MODIFY ("THREAD_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."REPLIES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TICKET_DETAILS
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."TICKET_DETAILS" ADD CONSTRAINT "TICKET_DETAILS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."TICKET_DETAILS" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKET_DETAILS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKET_DETAILS" MODIFY ("ACTION" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKET_DETAILS" MODIFY ("TICKET_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKET_DETAILS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKET_DETAILS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TICKETS
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."TICKETS" ADD CONSTRAINT "TICKETS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."TICKETS" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKETS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKETS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKETS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKETS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."TICKETS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLE_USER
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."ROLE_USER" ADD CONSTRAINT "ROLE_USER_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."ROLE_USER" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLE_USER" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLE_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLE_USER" MODIFY ("ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."ROLE_USER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."CATEGORIES" ADD CONSTRAINT "CATEGORIES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."CATEGORIES" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."CATEGORIES" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."CATEGORIES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."CATEGORIES" MODIFY ("LEVEL" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."CATEGORIES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."USERS" ADD CONSTRAINT "USERS_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."USERS" ADD CONSTRAINT "USERS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LARAVELFORUM"."USERS" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."USERS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."USERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PASSWORD_RESETS
--------------------------------------------------------

  ALTER TABLE "LARAVELFORUM"."PASSWORD_RESETS" MODIFY ("UPDATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."PASSWORD_RESETS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."PASSWORD_RESETS" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "LARAVELFORUM"."PASSWORD_RESETS" MODIFY ("EMAIL" NOT NULL ENABLE);
