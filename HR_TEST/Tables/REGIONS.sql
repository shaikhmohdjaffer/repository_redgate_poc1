CREATE TABLE hr_test.regions (
  region_id NUMBER NOT NULL CONSTRAINT region_id_nn CHECK ("REGION_ID" IS NOT NULL),
  region_name VARCHAR2(25 BYTE),
  region_code1 CHAR(2 BYTE),
  CONSTRAINT reg_id_pk PRIMARY KEY (region_id)
);