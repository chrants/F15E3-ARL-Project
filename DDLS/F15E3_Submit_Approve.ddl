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
SELECT rfe_id,
FROM F15E3_RFE;

-- Approve RFE Trigger - Update Status/Time
CREATE OR REPLACE TRIGGER F15E3_RFE_approve_view_trigger
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

     CASE status_no
      WHEN 1 THEN -- Entered -> Submitted
         status_no := 2;
      WHEN 2 THEN -- Submitted -> SA Approved
         status_no := 6;
      WHEN 6 THEN -- SA Approved -> LD Approval
         status_no := 7;
      WHEN 7 THEN -- LD Approval -> CH Approval
         status_no := 8;
      WHEN 8 THEN -- CH Approval -> Final Approved
         status_no := 9;
     END;

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

    END F15E3_RFE_approve_view_trigger;
/


create view F15E3_RFE_status_update_view as
SELECT rfe_id,
FROM F15E3_RFE;

-- Reject/Recall/Return RFE Trigger - Update Status/Time
CREATE OR REPLACE TRIGGER F15E3_RFE_status_update_view_trigger
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

    END F15E3_RFE_status_update_view_trigger;
/
