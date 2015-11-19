DROP SEQUENCE F15E3_Auth_seq ; 
create sequence F15E3_Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_Auth_PK_trig 
; 

create or replace trigger F15E3_Auth_PK_trig 
before insert on F15E3_Auth
for each row 
begin 
select F15E3_Auth_seq.nextval into :new.auth_id from dual; 
end; 
/

DROP SEQUENCE F15E3_Comment_seq ; 
create sequence F15E3_Comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_Comment_PK_trig 
; 

create or replace trigger F15E3_Comment_PK_trig 
before insert on F15E3_Comment
for each row 
begin 
select F15E3_Comment_seq.nextval into :new.comment_id from dual; 
end; 
/

DROP SEQUENCE F15E3_Document_seq ; 
create sequence F15E3_Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_Document_PK_trig 
; 

create or replace trigger F15E3_Document_PK_trig 
before insert on F15E3_Document
for each row 
begin 
select F15E3_Document_seq.nextval into :new.document_id from dual; 
end; 
/

DROP SEQUENCE F15E3_Employee_seq ; 
create sequence F15E3_Employee_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_Employee_PK_trig 
; 

create or replace trigger F15E3_Employee_PK_trig 
before insert on F15E3_Employee
for each row 
begin 
select F15E3_Employee_seq.nextval into :new.employee_id from dual; 
end; 
/

DROP SEQUENCE F15E3_Lab_seq ; 
create sequence F15E3_Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_Lab_PK_trig 
; 

create or replace trigger F15E3_Lab_PK_trig 
before insert on F15E3_Lab
for each row 
begin 
select F15E3_Lab_seq.nextval into :new.lab_id from dual; 
end; 
/

DROP SEQUENCE F15E3_RFE_seq ; 
create sequence F15E3_RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_RFE_PK_trig 
; 

create or replace trigger F15E3_RFE_PK_trig 
before insert on F15E3_RFE
for each row 
begin 
select F15E3_RFE_seq.nextval into :new.rfe_id from dual; 
end; 
/

-- Table F15E3_RFE_Contacts has a compound primary key so no sequence or trigger was created for it.
-- Table F15E3_RFE_Tasks has a compound primary key so no sequence or trigger was created for it.
-- DROP SEQUENCE F15E3_Role_Type_seq ; 
-- create sequence F15E3_Role_Type_seq 
-- start with 100 
-- increment by 1 
-- nomaxvalue 
-- ;
-- DROP TRIGGER F15E3_Role_Type_PK_trig 
-- ; 

-- create or replace trigger F15E3_Role_Type_PK_trig 
-- before insert on F15E3_Role_Type
-- for each row 
-- begin 
-- select F15E3_Role_Type_seq.nextval into :new.role_id from dual; 
-- end; 
-- /

-- DROP SEQUENCE F15E3_Status_seq ; 
-- create sequence F15E3_Status_seq 
-- start with 100 
-- increment by 1 
-- nomaxvalue 
-- ;
-- DROP TRIGGER F15E3_Status_PK_trig 
-- ; 

-- create or replace trigger F15E3_Status_PK_trig 
-- before insert on F15E3_Status
-- for each row 
-- begin 
-- select F15E3_Status_seq.nextval into :new.status_id from dual; 
-- end; 
-- /

DROP SEQUENCE F15E3_Status_History_seq ; 
create sequence F15E3_Status_History_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_Status_History_PK_trig 
; 

create or replace trigger F15E3_Status_History_PK_trig 
before insert on F15E3_Status_History
for each row 
begin 
select F15E3_Status_History_seq.nextval into :new.status_history_id from dual; 
end; 
/

DROP SEQUENCE F15E3_Task_seq ; 
create sequence F15E3_Task_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E3_Task_PK_trig 
; 

create or replace trigger F15E3_Task_PK_trig 
before insert on F15E3_Task
for each row 
begin 
select F15E3_Task_seq.nextval into :new.task_id from dual; 
end; 
/

DROP INDEX F15E3_Employee_employe_FK_0 ;
CREATE INDEX F15E3_Employee_employe_FK_0 ON F15E3_Auth(F15E3_Employee_employee_id) ;
DROP INDEX F15E3_RFE_rfe_id_FK_1 ;
CREATE INDEX F15E3_RFE_rfe_id_FK_1 ON F15E3_Comment(F15E3_RFE_rfe_id) ;
DROP INDEX F15E3_RFE_rfe_id_FK_2 ;
CREATE INDEX F15E3_RFE_rfe_id_FK_2 ON F15E3_Document(F15E3_RFE_rfe_id) ;
DROP INDEX F15E3_Auth_auth_id_FK_3 ;
CREATE INDEX F15E3_Auth_auth_id_FK_3 ON F15E3_Employee(F15E3_Auth_auth_id) ;
DROP INDEX F15E3_Lab_lab_id_FK_4 ;
CREATE INDEX F15E3_Lab_lab_id_FK_4 ON F15E3_Employee(F15E3_Lab_lab_id) ;
DROP INDEX F15E3_Emp_Type_emp_typ_FK_5 ;
CREATE INDEX F15E3_Emp_Type_emp_typ_FK_5 ON F15E3_Employee(F15E3_Emp_Type_emp_type1) ;
DROP INDEX F15E3_Emp_Type_emp_typ_FK_6 ;
CREATE INDEX F15E3_Emp_Type_emp_typ_FK_6 ON F15E3_Employee(F15E3_Emp_Type_emp_type) ;
DROP INDEX F15E3_Status_status_id_FK_7 ;
CREATE INDEX F15E3_Status_status_id_FK_7 ON F15E3_RFE(F15E3_Status_status_id) ;
DROP INDEX F15E3_RFE_rfe_id_FK_8 ;
CREATE INDEX F15E3_RFE_rfe_id_FK_8 ON F15E3_Status_History(F15E3_RFE_rfe_id) ;
DROP INDEX F15E3_Status_status_id_FK_9 ;
CREATE INDEX F15E3_Status_status_id_FK_9 ON F15E3_Status_History(F15E3_Status_status_id) ;
DROP INDEX F15E3_RFE_rfe_id_FK_10 ;
CREATE INDEX F15E3_RFE_rfe_id_FK_10 ON F15E3_RFE_Contacts(F15E3_RFE_rfe_id) ;
DROP INDEX F15E3_Employee_employe_FK_11 ;
CREATE INDEX F15E3_Employee_employe_FK_11 ON F15E3_RFE_Contacts(F15E3_Employee_employee_id) ;
DROP INDEX F15E3_RFE_rfe_id_FK_12 ;
CREATE INDEX F15E3_RFE_rfe_id_FK_12 ON F15E3_RFE_Tasks(F15E3_RFE_rfe_id) ;
DROP INDEX F15E3_Task_task_id_FK_13 ;
CREATE INDEX F15E3_Task_task_id_FK_13 ON F15E3_RFE_Tasks(F15E3_Task_task_id) ;
