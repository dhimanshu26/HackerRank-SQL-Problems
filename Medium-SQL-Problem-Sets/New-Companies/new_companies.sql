/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT cmp.company_code,
         cmp.founder,
         COUNT (DISTINCT emp.lead_manager_code)       cnt_lead_mgr,
         COUNT (DISTINCT emp.senior_manager_code)     cnt_senior_mgr,
         COUNT (DISTINCT emp.manager_code)            cnt_mgr,
         COUNT (DISTINCT emp.employee_code)           cnt_lead_mgr
    FROM company cmp, employee emp
   WHERE cmp.company_code = emp.company_code
GROUP BY cmp.company_code, cmp.founder
ORDER BY cmp.company_code;
