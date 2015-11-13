DROP SEQUENCE F15_E3Comment_seq ; 
create sequence F15_E3Comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15_E3Comment_PK_trig 
; 

create or replace trigger F15_E3Comment_PK_trig 
before insert on F15_E3Comment
for each row 
begin 
select F15_E3Comment_seq.nextval into :new.comment_id from dual; 
end; 
/

DROP SEQUENCE F15_E3Document_seq ; 
create sequence F15_E3Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15_E3Document_PK_trig 
; 

create or replace trigger F15_E3Document_PK_trig 
before insert on F15_E3Document
for each row 
begin 
select F15_E3Document_seq.nextval into :new.document_id from dual; 
end; 
/

DROP SEQUENCE F15_E3Employee_seq ; 
create sequence F15_E3Employee_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15_E3Employee_PK_trig 
; 

create or replace trigger F15_E3Employee_PK_trig 
before insert on F15_E3Employee
for each row 
begin 
select F15_E3Employee_seq.nextval into :new.employee_id from dual; 
end; 
/

DROP SEQUENCE F15_E3Lab_seq ; 
create sequence F15_E3Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15_E3Lab_PK_trig 
; 

create or replace trigger F15_E3Lab_PK_trig 
before insert on F15_E3Lab
for each row 
begin 
select F15_E3Lab_seq.nextval into :new.lab_id from dual; 
end; 
/

DROP SEQUENCE F15_E3Project_seq ; 
create sequence F15_E3Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15_E3Project_PK_trig 
; 

create or replace trigger F15_E3Project_PK_trig 
before insert on F15_E3Project
for each row 
begin 
select F15_E3Project_seq.nextval into :new.project_id from dual; 
end; 
/

DROP SEQUENCE F15_E3RFE_seq ; 
create sequence F15_E3RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15_E3RFE_PK_trig 
; 

create or replace trigger F15_E3RFE_PK_trig 
before insert on F15_E3RFE
for each row 
begin 
select F15_E3RFE_seq.nextval into :new.rfe_id from dual; 
end; 
/

DROP SEQUENCE F15_E3Status_History_seq ; 
create sequence F15_E3Status_History_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15_E3Status_History_PK_trig 
; 

create or replace trigger F15_E3Status_History_PK_trig 
before insert on F15_E3Status_History
for each row 
begin 
select F15_E3Status_History_seq.nextval into :new.status_history_id from dual; 
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
