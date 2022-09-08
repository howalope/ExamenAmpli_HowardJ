CREATE DATABASE VEHICULO
/*----------------------------------------------------------------------------------------------*/
USE VEHICULO
/*----------------------------------------------------------------------------------------------*/
CREATE TABLE PLACA
(
	ID_PLACA INT IDENTITY,
	NUMERO_TERMINACION INT UNIQUE NOT NULL,

	CONSTRAINT CK_TERMINACION CHECK ( NUMERO_TERMINACION <=9 AND NUMERO_TERMINACION >=0 ), 
	CONSTRAINT PK_ID PRIMARY KEY (ID_PLACA)

)
/*----------------------------------------------------------------------------------------------*/

CREATE TABLE DIAS 
(
	ID_DIA INT IDENTITY,
	DESCRIPCION VARCHAR (50) NOT NULL, 
	CONSTRAINT PK_DIA PRIMARY KEY (ID_DIA),
	CONSTRAINT CK_DIA CHECK (DESCRIPCION IN ('LUNES', 'MARTES','MIERCOLES','JUEVES','VIERNES','SABADO','DOMINGO') )
	 	
)
/*----------------------------------------------------------------------------------------------*/

CREATE TABLE RESTRICCION_PLACADIA 
(
	ID_CODIGO INT IDENTITY,
	ID_PLACA_R INT,
	ID_DIA_R INT,
	CONSTRAINT PK_CODIGO PRIMARY KEY (ID_CODIGO),
	CONSTRAINT FK_PLACA_R FOREIGN KEY (ID_PLACA_R) REFERENCES PLACA (ID_PLACA),
	CONSTRAINT FK_DIA_R FOREIGN KEY (ID_DIA_R) REFERENCES DIAS (ID_DIA)
)
/*----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE AGREGRAR_PLACA

@TERMINACION INT

AS 
	BEGIN
		INSERT INTO PLACA (NUMERO_TERMINACION) VALUES (@TERMINACION)

	END
/*----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE ELIMINAR_PLACA
@ID INT

AS 
	BEGIN
		DELETE FROM PLACA WHERE ID_PLACA = @ID

	END
/*----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE AGREGRAR_DIAS

@DESCRIPCION VARCHAR (50)

AS 
	BEGIN
		INSERT INTO DIAS (DESCRIPCION) VALUES (@DESCRIPCION)

	END
/*----------------------------------------------------------------------------------------------*/
CREATE PROCEDURE ELIMINAR_DIAS
@DESCRIPCION VARCHAR (50)

AS 
	BEGIN
		DELETE FROM DIAS WHERE DESCRIPCION = @DESCRIPCION

	END
/*----------------------------------------------------------------------------------------------*/
CREATE PROCEDURE AGREGAR_RESTRICCION

@IDDI INT,
@IDP INT

AS 
	BEGIN
		INSERT INTO RESTRICCION_PLACADIA (ID_PLACA_R, ID_DIA_R) VALUES (@IDP,@IDDI)
	END

/*----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE ELIMINAR_RESTRICCION
@IDR INT

AS 
	BEGIN
		DELETE FROM RESTRICCION_PLACADIA WHERE ID_CODIGO = @IDR
	END
/*----------------------------------------------------------------------------------------------*/
CREATE PROCEDURE REPORTE_RESTRICCION
@IDP INT

AS
	BEGIN 
		SELECT ID_PLACA_R, DESCRIPCION FROM DIAS INNER JOIN  RESTRICCION_PLACADIA ON DIAS.ID_DIA=RESTRICCION_PLACADIA.ID_DIA_R;
	END

/*----------------------------------------------------------------------------------------------*/
CREATE TABLE PLACA_AUDITORIA
(
	ID_PLACA INT, 
	NUMERO_TERMINACION INT,
	FECHA DATETIME

)
/*----------------------------------------------------------------------------------------------*/
CREATE TRIGGER TRIGGER_AUDITORIA_PLACA
ON PLACA
AFTER INSERT, DELETE
	AS
		BEGIN
			INSERT INTO PLACA_AUDITORIA (ID_PLACA, NUMERO_TERMINACION, FECHA) 
			SELECT i.ID_PLACA, i.NUMERO_TERMINACION,  GETDATE() FROM INSERTED i
			UNION ALL
			SELECT d.ID_PLACA, d.NUMERO_TERMINACION, GETDATE() FROM DELETED d

		END
/*----------------------------------------------------------------------------------------------*/


