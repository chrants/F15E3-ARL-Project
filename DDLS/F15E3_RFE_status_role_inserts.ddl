DELETE FROM F15E3_Status;
--WHERE status_id <= 9 OR status_id >= 1;

DELETE FROM F15E3_Role_Type;
--WHERE role_id <= 6 OR role_id >= 1;

DELETE FROM F15E3_Emp_Type;

INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (1, 'Entered', 'The RFE has been created but has not yet been submitted for approval.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (2, 'Submitted', 'The RFE has been submitted to the Lab System Administrator for approval.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (3, 'Returned', 'The RFE has been returned for further information or clarification. Once Submitted again, it will follow the same routing as an Entered RFE.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (4, 'Recalled', 'The requestor has recalled an RFE that has not yet reached final approval. Once Submitted again, it will follow the same routing as an Entered RFE.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (5, 'Rejected', 'The RFE has been rejected and cannot be implemented.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (6, 'SA Approved', 'The Lab System Administrator has approved the RFE; it has been submitted for Lab Director approval.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (7, 'LD Approval', 'The Lab Director has approved the RFE; it has been submitted for Network Security Panel approval.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (8, 'CH Approval', 'The Lab Director has approved the RFE; it has been submitted to the Chairperson of Security Panel approval.');
INSERT INTO F15E3_Status (status_id, rfe_status, description)
VALUES (9, 'Final Approved', 'The Executive Director''s Office has given final approval for the RFE and it may be implemented.');

INSERT INTO F15E3_Role_Type (role_id, role_type, description)
VALUES (1, 'Requestor', 'The employee who create the RFE');
INSERT INTO F15E3_Role_Type (role_id, role_type, description)
VALUES (2, 'FYI Reviewer', 'An employee with peripheral interests; will get automatically notified at certain stages');
INSERT INTO F15E3_Role_Type (role_id, role_type, description)
VALUES (3, 'Sys Admin Approver', 'First round approver for new RFE''s in their lab');
INSERT INTO F15E3_Role_Type (role_id, role_type, description)
VALUES (4, 'Lab Director Approver', 'Second round approver for new RFE''s in their lab');
INSERT INTO F15E3_Role_Type (role_id, role_type, description)
VALUES (5, 'Chairperson Approver', 'Network Security Panel approver');
INSERT INTO F15E3_Role_Type (role_id, role_type, description)
VALUES (6, 'Exec Dir Approver', 'Final round approver for all RFE''s');

INSERT INTO F15E3_Emp_Type (emp_type)
VALUES ('System Admin');
INSERT INTO F15E3_Emp_Type (emp_type)
VALUES ('Lab Director');
INSERT INTO F15E3_Emp_Type (emp_type)
VALUES ('Security Chairperson');
INSERT INTO F15E3_Emp_Type (emp_type)
VALUES ('Executive Director');


