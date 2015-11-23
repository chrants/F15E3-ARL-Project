drop view F15E3_Employee_view;

create view F15E3_Employee_view as
SELECT 
    employee_id,
    employee_name,
    employee_email,
    employee_office,
    employee_phone,
    employee_status,
    status_eff_date,
    F15E3_Auth_auth_id,
    F15E3_Lab_lab_id,
    l.lab_code as lab_code,
    l.name as lab_name,
    F15E3_Emp_Type_emp_type
FROM F15E3_Employee e JOIN F15E3_Auth a
ON e.employee_id = a.F15E3_Employee_employee_id
JOIN F15E3_Lab l
ON e.F15E3_Lab_lab_id = l.lab_id;

create or replace TRIGGER F15E3_Employee_trigger
     INSTEAD OF insert ON F15E3_Employee_view
     FOR EACH ROW
BEGIN
	-- For Checking if only one executive director and chairperson
	DECLARE
	emp_id Integer;
	BEGIN
		IF (:NEW.F15E3_Emp_Type_emp_type = 'Executive Director') THEN
			SELECT employee_id 
			INTO emp_id
			FROM F15E3_Employee 
			WHERE (F15E3_Emp_Type_emp_type = 'Executive Director');
		END IF;
		IF (:NEW.F15E3_Emp_Type_emp_type = 'Security Chairperson')THEN
			SELECT employee_id 
			INTO emp_id
			FROM F15E3_Employee 
			WHERE (F15E3_Emp_Type_emp_type = 'Security Chairperson');
		END IF;

        -- CASE: One Executive Director or Secuirty Chairperson
        IF(emp_id IS NOT NULL) THEN
            raise_application_error(-20022,'Employee with id '||emp_id
                ||' is already a '||:NEW.F15E3_Emp_Type_emp_type||'. Please remove employee before trying to add another '
                ||:NEW.F15E3_Emp_Type_emp_type||'.');
        END IF;

        -- CASE: Too many executive directors/security chairperson
		EXCEPTION
        WHEN no_data_found THEN
            NULL;
		WHEN too_many_rows THEN
			raise_application_error(-20022,'An error was encountered - '
                ||SQLCODE||' -ERROR- '||SQLERRM);

	END;
	
    DECLARE
    status_eff_date DATE;
    BEGIN
        IF (:NEW.status_eff_date IS NULL)THEN
            status_eff_date := localtimestamp;
        ELSE
            status_eff_date := :NEW.status_eff_date;
        END IF;
    -- One sys admin and lab direct per lab
        insert into F15E3_Employee( 
            employee_name,
            employee_email,
            employee_office,
            employee_phone,
            employee_status,
            status_eff_date,
            F15E3_Auth_auth_id,
            F15E3_Lab_lab_id,
            F15E3_Emp_Type_emp_type)
             VALUES ( 
            :NEW.employee_name,
            :NEW.employee_email,
            :NEW.employee_office,
            :NEW.employee_phone,
            :NEW.employee_status,
            status_eff_date,
            :NEW.F15E3_Auth_auth_id,
            :NEW.F15E3_Lab_lab_id,
            :NEW.F15E3_Emp_Type_emp_type) ;
            END;

END;
/

drop view F15E3_Lab_view;

create view F15E3_Lab_view as
SELECT 
    lab_id,
    lab_code,
    name
FROM F15E3_Lab;

create or replace TRIGGER F15E3_Lab_trigger
     INSTEAD OF insert ON F15E3_Lab_view
     FOR EACH ROW
BEGIN
    insert into F15E3_Lab( 
        lab_code,
		name)
		 VALUES ( 
        :NEW.lab_code,
		:NEW.name) ;
END;
/

drop view F15E3_RFE_create_view;

create view F15E3_RFE_create_view as
SELECT rfe_id, 
        F15E3_Status_status_id, 
        explanation,
        alt_protections, 
        approval_review_date
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

     -- Insert security Chair into Contacts table
     INSERT INTO F15E3_RFE_Contacts(
     	F15E3_RFE_rfe_id,
     	F15E3_Employee_employee_id,
     	role_id,
     	effective_date,
     	comments) 
     VALUES (
     	rfe_no,
     	(SELECT employee_id FROM F15E3_Employee 
     		WHERE F15E3_Emp_Type_emp_type = 'Security Chairperson'),
     	5, -- security Chair role id
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
     		WHERE F15E3_Emp_Type_emp_type = 'Executive Director'),
     	6, -- exec director role id
     	localtimestamp,
		''); -- What to put for comment?
   END F15E3_RFE_create_view_trigger;
/

-- View for pushing an RFE along in the review process
drop view F15E3_RFE_approve_view;

create view F15E3_RFE_approve_view as
SELECT rfe_id
FROM F15E3_RFE;

-- Approve RFE Trigger - Update Status/Time
CREATE OR REPLACE TRIGGER F15E3_RFE_approve_trigger
   INSTEAD OF UPDATE ON F15E3_RFE_approve_view
   DECLARE
     rfe_no NUMBER;
     status_no NUMBER;
   BEGIN
     rfe_no := :NEW.rfe_id;

     SELECT F15E3_Status_status_id 
     INTO status_no
     FROM F15E3_RFE
     WHERE rfe_id = rfe_no;

     IF status_no = 1 THEN
      status_no := 2;-- Entered -> Submitted
     ELSIF status_no = 2 THEN
      status_no := 6; -- Submitted -> SA Approved
     ELSIF status_no = 6 THEN 
      status_no := 7; -- SA Approved -> LD Approval
     ELSIF status_no = 7 THEN 
      status_no := 8; -- LD Approval -> CH Approval
     ELSIF status_no = 8 THEN 
      status_no := 9; -- CH Approval -> Final Approved
     END IF;

     UPDATE F15E3_RFE 
     SET F15E3_Status_status_id = status_no -- 2 Is the 'submitted' status
     WHERE rfe_id = rfe_no;

     INSERT INTO F15E3_Status_History(
      status_history_id, 
      F15E3_RFE_rfe_id,
      F15E3_Status_status_id,
      effective_date,
      entered_by_emp_id) 
     VALUES (
      F15E3_Status_History_seq.nextval, 
      rfe_no,
      status_no,
      localtimestamp,
      v('P100_LOGIN_EMP_ID'));

   -- TODO: Auto email

    END F15E3_RFE_approve_trigger;
/

-- View for Updating the status of an RFE arbitrarily
drop view F15E3_RFE_status_update_view;

create view F15E3_RFE_status_update_view as
SELECT rfe_id, F15E3_STATUS_STATUS_ID
FROM F15E3_RFE;

-- Reject/Recall/Return RFE Trigger - Update Status/Time
CREATE OR REPLACE TRIGGER F15E3_RFE_stat_update_trigger
   INSTEAD OF UPDATE ON F15E3_RFE_status_update_view
   DECLARE
     rfe_no NUMBER;
     status_no NUMBER;
     comment_text VARCHAR2(4000);
   BEGIN
     rfe_no := :NEW.rfe_id;
     status_no := :NEW.F15E3_Status_status_id;

     UPDATE F15E3_RFE 
     SET F15E3_Status_status_id = status_no
     WHERE rfe_id = rfe_no;

     INSERT INTO F15E3_Status_History(
      status_history_id, 
      F15E3_RFE_rfe_id,
      F15E3_Status_status_id,
      effective_date,
      entered_by_emp_id) 
     VALUES (
      F15E3_Status_History_seq.nextval, 
      rfe_no,
      status_no,
      localtimestamp,
      v('P100_LOGIN_EMP_ID'));

    -- TODO: Auto email

    -- Auto comment
    SELECT ((SELECT description FROM F15E3_Status 
               WHERE status_id = status_no) 
            || ' Automatic comment by ' 
            || (SELECT employee_name FROM F15E3_Employee 
                  WHERE employee_id = v('P100_LOGIN_EMP_ID'))
            || ' at ' || localtimestamp || '.')
    INTO comment_text
    FROM Dual;

    INSERT INTO F15E3_Comment (
      comment_id,
      F15E3_RFE_rfe_id,
      entered_by_emp_id,
      comment_entry_date,
      comment_body)
    VALUES (
      F15E3_Comment_seq.nextval,
      rfe_no,
      v('P100_LOGIN_EMP_ID'),
      localtimestamp,
      comment_text);

    END F15E3_RFE_stat_update_trigger;
/

-- View for Duplicating RFEs
drop view F15E3_RFE_dup_view;

create view F15E3_RFE_dup_view as
SELECT rfe_id
FROM F15E3_RFE;

-- Duplicate RFE Trigger - Select RFE and use info to create new RFE
CREATE OR REPLACE TRIGGER F15E3_RFE_dup_trigger
   INSTEAD OF INSERT ON F15E3_RFE_dup_view
   DECLARE
     rfe_no NUMBER;
   BEGIN
     rfe_no := :NEW.rfe_id;

     INSERT INTO F15E3_RFE_create_view(
        explanation,
        alt_protections)
     VALUES (
        (SELECT explanation FROM F15E3_RFE WHERE rfe_id = rfe_no),
        (SELECT alt_protections FROM F15E3_RFE WHERE rfe_id = rfe_no));

    END F15E3_RFE_dup_trigger;
/

CREATE OR REPLACE PROCEDURE status_name
(
  status_no INTEGER
)
RETURN VARCHAR2
AS
  stat_name VARCHAR2
BEGIN
  SELECT rfe_status 
  INTO stat_name 
  FROM F15E3_Status
  WHERE status_id = status_no;  
  
  RETURN stat_name;
END;
/

CREATE OR REPLACE PROCEDURE emp_name
(
  emp_no INTEGER
)
RETURN VARCHAR2
AS
  emp_name VARCHAR2
BEGIN
  SELECT employee_name 
  INTO emp_name
  FROM F15E3_Employee
  WHERE employee_id = emp_no;   
  
  RETURN emp_name;
END;
/

CREATE OR REPLACE PROCEDURE get_lab_code
(
  lab_no INTEGER
)
RETURN VARCHAR2
AS
  my_lab_code VARCHAR2
BEGIN
  SELECT lab_code 
  INTO my_lab_code
  FROM F15E3_Lab
  WHERE lab_id = lab_no;    
  
  RETURN my_lab_code;
END;
/

drop view F15E3_RFE_Search_view;

create view F15E3_RFE_Search_view as
    SELECT rfe.RFE_ID AS 'RFE ID', 
        emp.employee_name AS Requestor, 
        get_lab_code(emp.F15E3_Lab_lab_id) AS Lab
        status_name(rfe.F15E3_Status_status_id) AS Status, 
        stat_his.effective_date AS 'Status Eff Date',
        comm.comment_body AS 'Last Comments'
    FROM F15E3_RFE rfe
        INNER JOIN F15E3_Contacts con ON con.F15E3_RFE_rfe_id = rfe.ID AND con.role_id = '1' -- requestor
        INNER JOIN F15E3_Employee emp ON con.F15E3_Employee_employee_id = emp.emp_id
        INNER JOIN F15E3_Status_History stat_his ON stat_his.F15E3_Status_status_id = rfe.F15E3_Status_status_id
        INNER JOIN F15E3_Comment comm ON rfe.RFE_ID = comm.F15E3_RFE_rfe_id
    WHERE comm.comment_entry_date = (SELECT MAX(comm2.comment_entry_date) FROM F15E3_Comment comm2 WHERE rfe.RFE_ID = comm2.F15E3_Status_status_id);


-- BAD
-- F15E3_RFE_seq;
-- drop sequence RFE_ID;
-- create sequence dept_deptno
-- start with 60
-- increment by 1
-- nomaxvalue;

-- drop view dept_view ;

-- create view dept_view as
-- SELECT *
-- FROM dept ;

-- CREATE OR REPLACE TRIGGER dept_view_trigger
--    INSTEAD OF INSERT ON dept_view
--    DECLARE
--      deptno NUMBER;
--    BEGIN
--      deptno := dept_deptno.nextval;
--      INSERT INTO DEPT(DEPTNO, DNAME, LOC) VALUES (
--         deptno,
--         :NEW.DNAME,
--         :NEW.LOC
--      );
--      INSERT INTO EMP(EMPNO, DEPTNO) VALUES (10, deptno);
--    END dept_view_trigger;
-- /

-- insert into dept_view(DEPTNO, DNAME, LOC) VALUES (60, 'New_Dept', 'Austin');

