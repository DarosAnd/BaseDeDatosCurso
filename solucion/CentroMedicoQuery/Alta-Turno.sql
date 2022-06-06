


CREATE proc ALTA_Turno(
			@fechaTurno varchar(14),
			@idPaciente paciente,
			@idMedico medico,
			@observacion observacion = ' '
			)

as

IF NOT EXISTS(SELECT TOP 1 idTurno from Turno WHERE fechaTurno = @fechaTurno)
BEGIN
	INSERT INTO Turno (fechaTurno, estado, observacion)
	VALUES (@fechaTurno, 0, @observacion)

	declare @auxIdTurno turno
	set @auxIdTurno = @@IDENTITY

	INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
	VALUES (@auxIdTurno, @idPaciente, @idMedico)

	print 'El turno se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El turno ya existe.'
	return
END