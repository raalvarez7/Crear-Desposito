/*******************Crear Deposito*******************/

-----------------------------PASO 1 -----------------------------
-------------------INSERTAR REGISTRO EN TABLAS-------------------
--select * from tablas 
--where clave = 'SI15122'

begin tran TA
insert into TABLAS (CLAVE,FUNCION,ALFA01,ALFA02,ALFA03,ALFA04,ALFA05,ALFA06,NUME01,NUME02,NUME03,NUME04,NUME05,NUME06,NUME07,NUME08,NUME09,NUME10)
			values('SI15124','PAYSANDU          NSSSN','PAYSANDU','N','S','S','S','N',0,0,0,0,0,0,0,0,0,0)

			--COMMIT TRAN TA

-----------------------------PASO 2 -----------------------------
-------------------INSERTAR REGISTRO EN DEPOSITO-------------------
--select * from deposito

begin tran DE
insert into Deposito(W_CODIGO,Detalle,Disponible,Activo)
		values ('24','PAYSANDU','Y','Y')

		--COMMIT TRAN DE

-----------------------------PASO 3 -----------------------------
-----ACTUALIZAR CAMPO VALOR Y AGREGAR EL NUMERO DE DEPOSITO------
/*
01.- Click Derecho tabla SystemParameters
02.- Editar las primeras 200 filas
03.- Pulsar Mostrar panel  (SQL) arriba a al izquierda
04.- copiar:  SELECT TOP (200) ParameterID, Codigo, Valor, Descripcion FROM SystemParameters where descripcion like '%depo%'
05.- Pulsar signo de : ! en color rojo (EJECUTAR SQL)
06.- Agregar ,XX en los registros del parameterID 153 Y 162
07.- Cerrar y se guarda 
08.- Para verificar cambios ejecutar: select * FROM SystemParameters where Descripcion like '%depo%'
*/

-----------------------------PASO 4 -----------------------------
--------ACTUALIZAR CAMPO VALOR Y AGREGAR EL DEPOSITO (2)---------
/*
01.- Click Derecho tabla SystemParameters
02.- Editar las primeras 200 filas
03.- Pulsar Mostrar panel  (SQL) arriba a al izquierda
04.- copiar:  SELECT TOP (200) ParameterID, Codigo, Valor, Descripcion FROM SystemParameters where descripcion like '%almac%'
05.- Pulsar signo de : ! en color rojo (EJECUTAR SQL)
06.- Agregar ,XX en los registros del parameterID 104
07.- Cerrar y se guarda
08.- Para verificar cambios ejecutar: select * FROM SystemParameters where Descripcion like '%almac%'
*/

