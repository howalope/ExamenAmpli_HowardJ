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
	CONSTRAINT CK_DIA CHECK (DESCRIPCION IN ('LUNES', 'MIERCOLES','JUEVES','VIERNES','SABADO','DOMINGO') )
	
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
@ID INT,
@TERMINACION INT

AS 
	BEGIN
		INSERT INTO PLACA (ID_PLACA, NUMERO_TERMINACION) VALUES (@ID, @TERMINACION)

	END
/*----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE ELIMINAR_PLACA
@ID INT,
@TERMINACION INT

AS 
	BEGIN
		DELETE FROM PLACA WHERE ID_PLACA = @ID

	END
/*----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE AGREGRAR_DIAS
@IDD INT,
@DESCRIPCION INT

AS 
	BEGIN
		INSERT INTO DIAS (ID_DIA, DESCRIPCION) VALUES (@IDD, @DESCRIPCION)

	END
/*----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE ELIMINAR_DIAS
@IDD INT,
@DESCRIPCION INT

AS 
	BEGIN
		DELETE FROM DIAS WHERE ID_DIA = @IDD

	END
/*----------------------------------------------------------------------------------------------*/
CREATE PROCEDURE AGREGAR_RESTRICCION
@IDR INT,
@IDDI INT,
@IDP INT

AS 
	BEGIN
		INSERT INTO RESTRICCION_PLACADIA (ID_CODIGO, ID_PLACA_R, ID_DIA_R) VALUES (@IDR,@IDP,@IDDI)
	END

/*----------------------------------------------------------------------------------------------*/
CREATE PROCEDURE ELIMINAR_RESTRICCION
@IDR INT,
@IDDI INT,
@IDP INT

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



