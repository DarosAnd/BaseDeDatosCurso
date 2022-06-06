
select * from Paciente where Nombre = 'Dario'

insert into Paciente values 
	('Mario', 'Andreatini', getdate(), 'Callefalsa 1234', 'ARG', '12341234', 'JEJE')

delete from Paciente where idPaciente = 4

update Paciente set email = 'GAGA' WHERE idPaciente = 1

select top 2 * from Paciente order by Nacimiento desc

select * from Paciente order by Nacimiento Desc

select * from Paciente

SELECT DISTINCT (apellido) FROM Paciente

SELECT apellido from Paciente

SELECT Apellido FROM Paciente GROUP BY Apellido

SELECT Apellido,MAX(idpaciente) FROM Paciente GROUP BY Apellido

select apellido, sum(idpaciente) from paciente group by Apellido

select avg(idpaciente) from Paciente 

select count(*) from paciente where apellido = 'Andreatini'

select * from Paciente where apellido = 'andreatini' or nombre = 'juan'

select * from Paciente where nombre in ('dario', 'juan')

select * from Paciente where Apellido not like 'and%'

select * from paciente where idPaciente between 2 and 5

exec SP_Paciente 7

exec ALTA_Paciente '2324324','Jorge','Lopez','20180518','calle 1','ARG','','jorgelopez@gmail.com',''

exec ALTA_Turno '20190403 12:45', 2, 1, 'Tiene que hacer ayuno'

exec ALTA_medico 'Gerardo', 'Martinez', 1, 'Medico residente'

EXEC ALTA_Especialidad 'Dermatologia'

select * from Turno
select * from Medico
select * from Especialidad
select * from MedicoEspecialidad
select * from TurnoPaciente

delete from Especialidad where idEspecialidad = 2 and idEspecialidad = 3

sp_help paciente
