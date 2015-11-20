-- Submit RFE Trigger - Validate and Update Status/Time ---- Entered -> Submitted state
-- create view F15E3_RFE_submit_view as
-- SELECT rfe_id,
-- FROM F15E3_RFE;

-- CREATE OR REPLACE TRIGGER F15E3_RFE_submit_view_trigger
--    INSTEAD OF UPDATE ON F15E3_RFE_submit_view
--    DECLARE
--      rfe_no NUMBER;
--    BEGIN
--      rfe_no := :NEW.rfe_id;
--      UPDATE F15E3_RFE 
--      SET F15E3_Status_status_id = 2 -- 2 Is the 'submitted' status
--      WHERE rfe_id = rfe_no; 

--      INSERT INTO F15E3_Status_History(
--       status_history_id, 
--       F15E3_RFE_rfe_id,
--       F15E3_Status_status_id,
--       effective_date,
--       entered_by_emp_id) 
--      VALUES (
--       F15E3_Status_History_seq.nextval, 
--       rfe_no,
--       2,
--       localtimestamp,
--     v('P100_LOGIN_EMP_ID'));
--     END F15E3_RFE_submit_view_trigger;
-- /

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

    END F15E3_RFE_approve_trigger;
/

create view F15E3_RFE_status_update_view as
SELECT rfe_id, F15E3_STATUS_STATUS_ID
FROM F15E3_RFE;

-- Reject/Recall/Return RFE Trigger - Update Status/Time
CREATE OR REPLACE TRIGGER F15E3_RFE_stat_update_trigger
   INSTEAD OF UPDATE ON F15E3_RFE_status_update_view
   DECLARE
     rfe_no NUMBER;
     status_no NUMBER;
   BEGIN
     rfe_no := :NEW.rfe_id;
     status_no := :NEW.F15E3_Status_status_id;

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

    END F15E3_RFE_stat_update_trigger;
/
