
-- if
DECLARE @idPaciente int
DECLARE @idTurno int

set @idPaciente = 7

IF @idPaciente = 7 
	BEGIN
		set @idTurno = 20
		select * from Paciente where idPaciente = @idPaciente
		print @idTurno

		IF EXISTS (SELECT * FROM Paciente WHERE idPaciente=2)
			print 'existe'
	END
ELSE 
	BEGIN
		PRINT 'NO SE PUDO'
	END


-- while
DECLARE @contador int = 0

WHILE @contador <= 10
begin 
	print @contador 
	set @contador = (@contador + 1)
end 


-- case 
declare @valor int 
declare @resultado char(10)

set @valor = 0
set @resultado = (case when @valor = 10 then 'Rojo'
					   when @valor = 5 then 'Negro'
					   when @valor = 0 then 'Blanco'
					   end)

print @resultado


-- return y break

DECLARE @contador2 int = 0

WHILE @contador2 <= 10
begin  
	print @contador2 
	set @contador2 = (@contador2 + 1)
	if @contador2 = 3
		break
end 
print 'hola'

-- try catch

begin try
	set @contador2 = 'hola'
end try

begin catch
	print 'No se puede'
end catch