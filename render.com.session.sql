CREATE TABLE teams
( 
  id           INTEGER      NOT NULL  PRIMARY KEY,
  name         VARCHAR(37)  NOT NULL,
  conference   VARCHAR(2)   NULL
)

INSERT INTO teams
  ( id , name , conference )
VALUES
  ( 9 , 'Riff Raff' , 'F' )

  INSERT INTO teams
  ( conference , id , name )
VALUES
  ( 'F' , 9 , 'Riff Raff' ),
  ( 'F' , 37 , 'Havoc' ), 
  ( 'C' , 63 , 'Brewers' )

  INSERT INTO teams 
  ( id , conference , name ) 
VALUES 
  ( 9 , 'F' , 'Riff Raff' )
; 
INSERT INTO teams 
  ( id , conference , name ) 
VALUES 
  ( 37 , 'F' , 'Havoc' )
; 
INSERT INTO teams 
  ( id , conference , name ) 
VALUES 
  ( 63 , 'C' , 'Brewers' )
; 

UPDATE
  teams
SET
  conference = 'E' 
WHERE
  id = 9

  UPDATE
  personnel
SET
  salary = salary * 1.07
WHERE
  jobgrade <= 4

  DELETE
FROM
  teams
WHERE
  id = 63