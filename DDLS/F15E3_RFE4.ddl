create view F15E3_Employee_view as
SELECT 
    employee_id,
    employee_name,
    employee_lab,
    employee_email,
    employee_office,
    employee_phone,
    employee_status,
    status_eff_date,
    F15E3_Auth_auth_id,
    F15E3_Lab_lab_id,
    F15E3_Emp_Type_emp_type,
    F15E3_Emp_Type_emp_type1
FROM F15E3_Employee;

create or replace TRIGGER F15E3_Employee_trigger
     INSTEAD OF insert ON F15E3_Employee_view
     FOR EACH ROW
BEGIN
	-- For Checking if only one executive director and chairperson
	DECLARE
	emp_id Integer;
	BEGIN
		IF (:NEW.F15E3_Emp_Type_emp_type = 'Executive Director') 
		OR (:NEW.F15E3_Emp_Type_emp_type1 = 'Executive Director') THEN
			SELECT employee_id 
			INTO emp_id
			FROM F15E3_Employee 
			WHERE (F15E3_Emp_Type_emp_type = 'Executive Director')
			OR (F15E3_Emp_Type_emp_type1 = 'Executive Director');
		END IF;
		IF (:NEW.F15E3_Emp_Type_emp_type = 'Security Chairperson') 
		OR (:NEW.F15E3_Emp_Type_emp_type1 = 'Security Chairperson') THEN
			SELECT employee_id 
			INTO emp_id
			FROM F15E3_Employee 
			WHERE (F15E3_Emp_Type_emp_type = 'Security Chairperson')
			OR (F15E3_Emp_Type_emp_type1 = 'Security Chairperson');
		END IF;

		EXCEPTION
		WHEN no_data_found THEN
			NULL;
		WHEN too_many_rows THEN
			raise_application_error(-20022,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM||'emp_id: '||emp_id);
	END;
	
-- One sys admin and lab direct per lab
	insert into F15E3_Employee( 
    	employee_name,
    	employee_lab,
    	employee_email,
    	employee_office,
    	employee_phone,
    	employee_status,
    	status_eff_date,
    	F15E3_Auth_auth_id,
   	 	F15E3_Lab_lab_id,
    	F15E3_Emp_Type_emp_type,
    	F15E3_Emp_Type_emp_type1)
		 VALUES ( 
		:NEW.employee_name,
		:NEW.employee_lab,
		:NEW.employee_email,
		:NEW.employee_office,
		:NEW.employee_phone,
		:NEW.employee_status,
		:NEW.status_eff_date,
		:NEW.F15E3_Auth_auth_id,
		:NEW.F15E3_Lab_lab_id,
		:NEW.F15E3_Emp_Type_emp_type,
		:NEW.F15E3_Emp_Type_emp_type1) ;
END;
/

create view F15E3_Lab_view as
SELECT 
    lab_id,
    name
FROM F15E3_Lab;

create or replace TRIGGER F15E3_Lab_trigger
     INSTEAD OF insert ON F15E3_Lab_view
     FOR EACH ROW
BEGIN
    insert into F15E3_Lab( 
		name)
		 VALUES ( 
		:NEW.name) ;
END;
/

create view F15E3_RFE_create_view as
SELECT *
FROM F15E3_RFE;

CREATE OR REPLACE TRIGGER F15E3_RFE_create_view_trigger
   INSTEAD OF INSERT ON F15E3_RFE_create_view
   DECLARE
     rfe_no NUMBER;
     lab_no NUMBER;
   BEGIN
     rfe_no := F15E3_RFE_seq.nextval;
     INSERT INTO F15E3_RFE(
     	rfe_id, 
     	F15E3_Status_status_id, 
     	explanation,
     	alt_protections, 
     	approval_review_date) 
     VALUES (
        rfe_no,
        1, -- 1 Is the 'created' status
        :NEW.explanation,
        :NEW.alt_protections,
        :NEW.approval_review_date);

     INSERT INTO F15E3_Status_History(
     	status_history_id, 
     	F15E3_RFE_rfe_id,
     	F15E3_Status_status_id,
     	effective_date,
     	entered_by_emp_id) 
     VALUES (
     	F15E3_Status_History_seq.nextval, 
     	rfe_no,
     	1,
     	localtimestamp,
		v('P100_LOGIN_EMP_ID'));

     -- Insert Requestor into Contacts table
     INSERT INTO F15E3_RFE_Contacts(
     	F15E3_RFE_rfe_id,
     	F15E3_Employee_employee_id,
     	role_id,
     	effective_date,
     	comments) 
     VALUES (
     	rfe_no,
     	v('P100_LOGIN_EMP_ID'),
     	1, -- requestor role id
     	localtimestamp,
		''); -- What to put for comment?

     -- Get the lab_no for Sys Admin and Lab Director
     SELECT F15E3_Lab_lab_id INTO lab_no
     FROM F15E3_Employee WHERE employee_id = v('P100_LOGIN_EMP_ID');

     -- Insert Sys Admin Approver into Contacts table
     INSERT INTO F15E3_RFE_Contacts(
     	F15E3_RFE_rfe_id,
     	F15E3_Employee_employee_id,
     	role_id,
     	effective_date,
     	comments) 
     VALUES (
     	rfe_no,
     	(SELECT employee_id FROM F15E3_Employee 
     		WHERE F15E3_Lab_lab_id = lab_no 
     		AND F15E3_Emp_Type_emp_type = 'System Admin'),
     	3, -- System admin role id
     	localtimestamp,
		''); -- What to put for comment?

     -- Insert Lab director into Contacts table
     INSERT INTO F15E3_RFE_Contacts(
     	F15E3_RFE_rfe_id,
     	F15E3_Employee_employee_id,
     	role_id,
     	effective_date,
     	comments) 
     VALUES (
     	rfe_no,
     	(SELECT employee_id FROM F15E3_Employee 
     		WHERE F15E3_Lab_lab_id = lab_no 
     		AND F15E3_Emp_Type_emp_type = 'Lab Director'),
     	4, -- lab director role id
     	localtimestamp,
		''); -- What to put for comment?

     -- Insert executive director into Contacts table
     INSERT INTO F15E3_RFE_Contacts(
     	F15E3_RFE_rfe_id,
     	F15E3_Employee_employee_id,
     	role_id,
     	effective_date,
     	comments) 
     VALUES (
     	rfe_no,
     	(SELECT employee_id FROM F15E3_Employee 
     		WHERE F15E3_Lab_lab_id = lab_no 
     		AND F15E3_Emp_Type_emp_type = 'Lab Director'),
     	4, -- lab director role id
     	localtimestamp,
		''); -- What to put for comment?
   END F15E3_RFE_create_view_trigger;
/

-- BAD
F15E3_RFE_seq;
drop sequence RFE_ID;
create sequence dept_deptno
start with 60
increment by 1
nomaxvalue;

drop view dept_view ;

create view dept_view as
SELECT *
FROM dept ;

CREATE OR REPLACE TRIGGER dept_view_trigger
   INSTEAD OF INSERT ON dept_view
   DECLARE
     deptno NUMBER;
   BEGIN
     deptno := dept_deptno.nextval;
     INSERT INTO DEPT(DEPTNO, DNAME, LOC) VALUES (
        deptno,
        :NEW.DNAME,
        :NEW.LOC
     );
     INSERT INTO EMP(EMPNO, DEPTNO) VALUES (10, deptno);
   END dept_view_trigger;
/

insert into dept_view(DEPTNO, DNAME, LOC) VALUES (60, 'New_Dept', 'Austin');

