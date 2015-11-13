CREATE VIEW F15_E3RFE_view AS
SELECT
    rfe_id,
    rfe_status,
    explanation,
    alt_protections,
    approval_review_date
FROM F15_E3RFE JOIN F15_E3Status ON F15_E3Status_status_id = status_id;

create or replace TRIGGER F15_E3RFE_trigger
     INSTEAD OF insert ON F15_E3RFE_view
     FOR EACH ROW
BEGIN
    insert into F15_E3RFE(
    rfe_id,
    F15_E3Status_status_id,
    explanation,
    alt_protections,
    approval_review_date)
    VALUES (
    :NEW.rfe_id,
    1,
    :NEW.explanation,
    :NEW.alt_protections,
    :NEW.approval_review_date);
END;
/

