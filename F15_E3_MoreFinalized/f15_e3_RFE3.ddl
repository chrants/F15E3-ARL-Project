DROP SEQUENCE F15_E3Comment_seq ; 
create sequence F15_E3Comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Comment_PK_trig 
before insert on F15_E3Comment
for each row 
begin 
select F15_E3Comment_seq.nextval into :new.comment_id from dual; 
end; 
/
alter table F15_E3Comment add created date ; 
alter table F15_E3Comment add created_by VARCHAR2 (255) ; 
alter table F15_E3Comment add row_version_number integer ; 
alter table F15_E3Comment add updated date ; 
alter table F15_E3Comment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Comment_AUD_trig 
before insert or update on F15_E3Comment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3Document_seq ; 
create sequence F15_E3Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Document_PK_trig 
before insert on F15_E3Document
for each row 
begin 
select F15_E3Document_seq.nextval into :new.document_id from dual; 
end; 
/
alter table F15_E3Document add created date ; 
alter table F15_E3Document add created_by VARCHAR2 (255) ; 
alter table F15_E3Document add row_version_number integer ; 
alter table F15_E3Document add updated date ; 
alter table F15_E3Document add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Document_AUD_trig 
before insert or update on F15_E3Document 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3Employee_seq ; 
create sequence F15_E3Employee_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Employee_PK_trig 
before insert on F15_E3Employee
for each row 
begin 
select F15_E3Employee_seq.nextval into :new.employee_id from dual; 
end; 
/
alter table F15_E3Employee add created date ; 
alter table F15_E3Employee add created_by VARCHAR2 (255) ; 
alter table F15_E3Employee add row_version_number integer ; 
alter table F15_E3Employee add updated date ; 
alter table F15_E3Employee add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Employee_AUD_trig 
before insert or update on F15_E3Employee 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3Lab_seq ; 
create sequence F15_E3Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Lab_PK_trig 
before insert on F15_E3Lab
for each row 
begin 
select F15_E3Lab_seq.nextval into :new.lab_id from dual; 
end; 
/
alter table F15_E3Lab add created date ; 
alter table F15_E3Lab add created_by VARCHAR2 (255) ; 
alter table F15_E3Lab add row_version_number integer ; 
alter table F15_E3Lab add updated date ; 
alter table F15_E3Lab add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Lab_AUD_trig 
before insert or update on F15_E3Lab 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3Project_seq ; 
create sequence F15_E3Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Project_PK_trig 
before insert on F15_E3Project
for each row 
begin 
select F15_E3Project_seq.nextval into :new.project_id from dual; 
end; 
/
alter table F15_E3Project add created date ; 
alter table F15_E3Project add created_by VARCHAR2 (255) ; 
alter table F15_E3Project add row_version_number integer ; 
alter table F15_E3Project add updated date ; 
alter table F15_E3Project add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Project_AUD_trig 
before insert or update on F15_E3Project 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3RFE_seq ; 
create sequence F15_E3RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3RFE_PK_trig 
before insert on F15_E3RFE
for each row 
begin 
select F15_E3RFE_seq.nextval into :new.rfe_id from dual; 
end; 
/
alter table F15_E3RFE add created date ; 
alter table F15_E3RFE add created_by VARCHAR2 (255) ; 
alter table F15_E3RFE add row_version_number integer ; 
alter table F15_E3RFE add updated date ; 
alter table F15_E3RFE add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3RFE_AUD_trig 
before insert or update on F15_E3RFE 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3Role_Type_seq ; 
create sequence F15_E3Role_Type_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Role_Type_PK_trig 
before insert on F15_E3Role_Type
for each row 
begin 
select F15_E3Role_Type_seq.nextval into :new.role_id from dual; 
end; 
/
alter table F15_E3Role_Type add created date ; 
alter table F15_E3Role_Type add created_by VARCHAR2 (255) ; 
alter table F15_E3Role_Type add row_version_number integer ; 
alter table F15_E3Role_Type add updated date ; 
alter table F15_E3Role_Type add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Role_Type_AUD_trig 
before insert or update on F15_E3Role_Type 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3Status_seq ; 
create sequence F15_E3Status_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Status_PK_trig 
before insert on F15_E3Status
for each row 
begin 
select F15_E3Status_seq.nextval into :new.status_id from dual; 
end; 
/
alter table F15_E3Status add created date ; 
alter table F15_E3Status add created_by VARCHAR2 (255) ; 
alter table F15_E3Status add row_version_number integer ; 
alter table F15_E3Status add updated date ; 
alter table F15_E3Status add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Status_AUD_trig 
before insert or update on F15_E3Status 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15_E3Status_History_seq ; 
create sequence F15_E3Status_History_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15_E3Status_History_PK_trig 
before insert on F15_E3Status_History
for each row 
begin 
select F15_E3Status_History_seq.nextval into :new.status_history_id from dual; 
end; 
/
alter table F15_E3Status_History add created date ; 
alter table F15_E3Status_History add created_by VARCHAR2 (255) ; 
alter table F15_E3Status_History add row_version_number integer ; 
alter table F15_E3Status_History add updated date ; 
alter table F15_E3Status_History add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15_E3Status_History_AUD_trig 
before insert or update on F15_E3Status_History 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

-- Table rfe_contact_relation has a compound primary key so no sequence or trigger was created for it.
DROP INDEX F15_E3RFE_rfe_id_FK_0 ;
CREATE INDEX F15_E3RFE_rfe_id_FK_0 ON F15_E3Comment(F15_E3RFE_rfe_id) ;
DROP INDEX F15_E3RFE_rfe_id_FK_1 ;
CREATE INDEX F15_E3RFE_rfe_id_FK_1 ON F15_E3Document(F15_E3RFE_rfe_id) ;
DROP INDEX F15_E3Lab_lab_id_FK_2 ;
CREATE INDEX F15_E3Lab_lab_id_FK_2 ON F15_E3Employee(F15_E3Lab_lab_id) ;
DROP INDEX F15_E3RFE_rfe_id_FK_3 ;
CREATE INDEX F15_E3RFE_rfe_id_FK_3 ON F15_E3Project(F15_E3RFE_rfe_id) ;
DROP INDEX F15_E3Status_status_id_FK_4 ;
CREATE INDEX F15_E3Status_status_id_FK_4 ON F15_E3RFE(F15_E3Status_status_id) ;
DROP INDEX F15_E3RFE_rfe_id_FK_5 ;
CREATE INDEX F15_E3RFE_rfe_id_FK_5 ON F15_E3Status_History(F15_E3RFE_rfe_id) ;
DROP INDEX F15_E3Status_status_id_FK_6 ;
CREATE INDEX F15_E3Status_status_id_FK_6 ON F15_E3Status_History(F15_E3Status_status_id) ;
DROP INDEX F15_E3RFE_rfe_id_FK_7 ;
CREATE INDEX F15_E3RFE_rfe_id_FK_7 ON rfe_contact_relation(F15_E3RFE_rfe_id) ;
DROP INDEX F15_E3Employee_employe_FK_8 ;
CREATE INDEX F15_E3Employee_employe_FK_8 ON rfe_contact_relation(F15_E3Employee_employee_id) ;
