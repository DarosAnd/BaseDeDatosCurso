
-- select * from turno
-- select * from turnoestado

USE centromedico
GO

update turno set estado = 2, 
				observacion = 'Cancelado'
	where convert(char(8), fechaturno, 112) < convert(char(8),getdate(),112)
	and estado = 0



