--------------------------------------------------------
--  File created - Wednesday-November-10-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type GEOCOORD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "STARALE"."GEOCOORD" AS OBJECT
(Latitude NUMBER,
 Longitude NUMBER);

/
--------------------------------------------------------
--  DDL for Table TEAM
--------------------------------------------------------

  CREATE TABLE "STARALE"."TEAM" 
   (	"TEAM_ID" NUMBER(*,0), 
	"TEAM_NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into STARALE.TEAM
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table TEAM
--------------------------------------------------------

  ALTER TABLE "STARALE"."TEAM" MODIFY ("TEAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "STARALE"."TEAM" ADD PRIMARY KEY ("TEAM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "STARALE"."TEAM" ADD UNIQUE ("TEAM_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
