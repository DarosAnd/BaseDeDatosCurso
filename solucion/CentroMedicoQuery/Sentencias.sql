
create function prueba (@var int)
returns int

as 

begin
	set @var = @var * 5
	return @var
end

select dbo.prueba (5)