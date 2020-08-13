CREATE OR REPLACE TRIGGER hr_prod."UPDATE_JOB_HISTORY" 
  AFTER UPDATE OF job_id, department_id ON hr_prod.employees
  FOR EACH ROW
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
END;
/