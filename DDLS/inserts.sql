DELETE FROM F15E3_Lab;

DELETE FROM F15E3_Employee_view;

DELETE FROM F15E3_Comment;

DELETE FROM F15E3_RFE;

insert into F15E3_Lab (lab_id, lab_code, name)
	values (1, 'BION', 'Biological Nonmeclature');

insert into F15E3_Lab (lab_id, lab_code, name)
	values (2, 'PHYL', 'PhyloCode');

insert into F15E3_Lab (lab_id, lab_code, name)
	values (3, 'GENE', 'Gene Nonmeclature');

insert into F15E3_Lab (lab_id, lab_code, name)
	values (4, 'REDC', 'Red Cell Nonmeclature');

insert into F15E3_Lab (lab_id, lab_code, name)
	values (5, 'VINO', 'Virus Nonmeclature');

--view, edit, none
insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1001, 'Dwyane Wade', 'dwade@gmail.com', 'M101', 512-555-1234, 'A', '25-AUG-2015
			08:00am', 'view', 1, 'Lab Director');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1002, 'Kobe Bryant', 'kobeb@gmail.com', 'M102', 512-555-1235, 'A', '12-AUG-2015
			08:10am', 'edit', 2, 'Security Chairperson');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1003, 'Tim Duncan', 'timd@gmail.com', 'M103', 512-555-1236, 'A', '13-AUG-2015
			09:32am', 'edit', 3, 'Executive Director');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1004, 'James Harden', 'jamesh@gmail.com', 'M104', 512-555-1237, 'A', '14-AUG-2015
			03:00pm', 'view', 4, 'System Admin');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1005, 'Kevin Durant', 'kevind@gmail.com', 'M105', 512-555-1238, 'A', '17-AUG-2015
			09:00am', 'edit', 5, 'Security Chairperson');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1006, 'Dwight Howard', 'dhoward@gmail.com', 'M106', 512-555-1239, 'A', '18-AUG-2015
			12:00pm', 'view', 1, 'Lab Director');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1007, 'Dirk Nowitzki', 'dirkn@gmail.com', 'M107', 512-555-1265, 'A', '28-AUG-2015
			09:05am', 'view', 2, 'System Admin');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1008, ' Chris Paul', 'cpaul@gmail.com', 'M108', 512-555-1212, 'A', '10-AUG-2015
			07:30am', 'edit', 3, 'Lab Director');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1009, 'Carmelo Anthony', 'carmelo@gmail.com', 'M109', 512-555-1289, 'A', '11-AUG-2015
			08:50am', 'view', 4, 'Executive Director');

insert into F15E3_Employee_view (employee_id, employee_name, employee_email,
							employee_office, employee_phone, employee_status,
							status_eff_date, F15E3_Auth_level, F15E3_Lab_lab_id,
							F15E3_Emp_Type_emp_type )
	values (1011, ' Jason Terry', 'jasont@gmail.com', 'M110', 512-555-1267, 'A', '09-AUG-2015
			09:30am', 'none', 3, 'Security Chairperson');

--comment table
insert into F15E3_Comment (comment_id, F15E3_RFE_rfe_id, entered_by_emp_id, 
						comment_entry_date, comment_body)
	values (1, , , '25-AUG-2015 08:00am', 'The work was correctly and on time.');

--rfe table
insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 1, 'Firewall exception needed to access site.','Protected files should be pass in.',
			'25-AUG-2016 08:00am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 2, 'The RFE should be review then a decidion need to be made','A decision need to be made.',
			'20-AUG-2016 08:00am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 3, 'The data was returned. More information needed','ALT protection should provide more details.',
			'13-AUG-2016 09:30am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 4, 'The request was recalled. It has not reach the final approval.','Need to commit the changes and resubmit.',
			'10-AUG-2016 08:15am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 5, 'The files did not reach all the required data.','The data should not be returned',
			'27-AUG-2016 10:00am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 6, 'Enable data review required.','SA approved so the data can be view.',
			'14-AUG-2016 09:10am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 7, 'Password enablement can limit access','Lab director need to approved.',
			'11-AUG-2016 11:00am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 8, 'Password field should be enable','ALT Security should be considered.',
			'18-AUG-2016 08:45am');

insert into F15E3_RFE (rfe_id, F15E3_Status_status_id, explanation, alt_protections,
					approval_review_date)
	values ( , 9, 'Need to check the all privious appros','All access need to be granted permissions.',
			'24-AUG-2016 11:05am');












