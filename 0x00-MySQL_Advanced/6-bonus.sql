-- Script that creates a stored procedure AddBonus

-- that adds a new correction for a student.

DELIMITER $$ ;

CREATE PROCEDURE ADDBONUS(IN USER_ID INTEGER, IN PROJECT_NAME 
VARCHAR(255), IN SCORE INTEGER) BEGIN 
	IF NOT EXISTS(
	    SELECT name
	    FROM projects
	    WHERE name = project_name
	) THEN
	INSERT INTO projects (name)
	VALUES (project_name);
	END IF;
	INSERT INTO
	    corrections (user_id, project_id, score)
	VALUES (
	        user_id, (
	            SELECT id
	            from projects
	            WHERE
	                name = project_name
	        ),
	        score
	    );
END; 

$$ 

DELIMITER ;
