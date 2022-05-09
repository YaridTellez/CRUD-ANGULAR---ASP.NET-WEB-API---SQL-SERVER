CREATE PROC Mascota_All
AS
SELECT id_mascota
	   ,nombre
	   ,edad
	   ,descripcion 
FROM Mascota
ORDER BY id_mascota ASC

-----------------------------------------------------------

CREATE PROC Mascota_Add	
	 @nombre varchar(50)
	,@edad int
	,@desc varchar(MAX)
AS
INSERT INTO Mascota(nombre,edad,descripcion)
VALUES(@nombre,@edad,@desc)


-----------------------------------------------------------

CREATE PROC Mascota_Update
	 @id int
	,@nombre varchar(50)
	,@edad int
	,@desc varchar(MAX)
AS
UPDATE Mascota
SET
	 nombre = @nombre
	,edad = @edad
	,descripcion = @desc
WHERE id_mascota = @id


-----------------------------------------------------------
 CREATE PROC Mascota_delete
 @id int
 AS
 DELETE FROM Mascota
 WHERE id_mascota =@id