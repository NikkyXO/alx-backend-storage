-- Script that creates a view need_meeting that lists all students

-- that have a score under 80 (strict) and no last_meeting or more than 1 month.

CREATE VIEW NEED_MEETING AS 
	SELECT name
	from students
	WHERE
	    score < 80
	    AND (
	        last_meeting IS NULL
	        OR last_meeting < DATE(CURDATE() - INTERVAL 1 MONTH)
	    );
; 
