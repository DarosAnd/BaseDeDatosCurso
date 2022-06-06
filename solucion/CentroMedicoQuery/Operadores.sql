
declare @num decimal (9,2) = 20
declare @num2 decimal (9,2) = 30

declare @num3 decimal (9,2)

set @num3 = @num / @num2

print @num3

if @num2 <> @num
	print 'si'

-- funciona gual con letras/palabras