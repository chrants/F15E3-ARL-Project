drop function role_name;

CREATE OR REPLACE FUNCTION role_name
(
  role_no INTEGER
)
RETURN VARCHAR2
IS
  rol_name VARCHAR2(30);
BEGIN
  SELECT role_type 
  INTO rol_name 
  FROM F15E3_Role_Type
  WHERE role_id = role_no;  
  
  RETURN rol_name;
END;
/

drop view F15E3_RFE_Contacts_view;

create view F15E3_RFE_Contacts_view as
	SELECT F15E3_RFE_rfe_id, 
		F15E3_Employee_employee_id,
		role_id,
		emp_name(F15E3_Employee_employee_id) AS "Employee Name",
		role_name(role_id) AS "Role Name",
		effective_date,
		comments
	FROM F15E3_RFE_Contacts;
