/* Verification: A process to confirm that a data-cleaning effort
 Was well executed and the resulting data is accurate and reliable */

/* Changelog: A file containing a chronologically ordered list of modifications made to a project 
*/

/* SEE THE BIG PICTURE WHEN VERIFYING DATA - CLEANING
	1. Consider the business problem 
    2. Considr the goal 
    3. Consider the data */

-- Do the numbers make sense ?
/* CASE STATEMENT: it goes through one or more conditions and returns a value as soon as a condition is met */
SELECT 
	Customer_id, 
    CASE
    WHEN first_name = 'Tnoy' THEN 'Tony'
    ELSE first_name
    END AS cleaned_name
FROM
	party_planet;
