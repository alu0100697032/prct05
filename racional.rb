# Implementar en este fichero la clase para crear objetos racionales


#	 Implemente una clase Ruby para representar los números racionales. 
#	 Cada objeto debe representar un número racional reducido a su mínima expresión. 
#	 Se han de implementar los métodos de instancia que se solicitan a continuación:
#
#	 3to_s # devuelve una cadena con la representación del racional
#    suma # devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
#    resta # devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
#    producto # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
#    division # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
#
# 	 Implemente un conjunto de Pruebas Unitarias que permitan comprobar el correcto funcionamiento de la clase que 
#	 implementa a los números racionales.
require "./gcd.rb"

class Fraccion
	attr_reader :x, :y
	
	def initialize(x,y)
		if (y == 0)
			puts "¡El denominador tiene que ser mayor que 0!"
		else	
			@x, @y = x, y
			mcd = gcd(x,y)
			@x = x/mcd
			@y = y/mcd
		end	
	end	
	def to_s
		"#{@x}/#{@y}"
	end
	def suma(a, b)
		if (@y == b)
			num = @x + a
			puts "#{num}/#{b}"
		else
			num1 = @y * a 
			den1 = @y * b
 			num2 = @x * b 
			den2 = @y * b
			n = num1 + num2
			mcd = gcd(n,den2)
			num = n/mcd
			den = den2/mcd
			puts "#{num}/#{den}"
		end	
	end
	def resta(a, b)
		if (@y == b)
			num = @x - a
			mcd = gcd(num,b)
			num = num/mcd
			den = b/mcd
			puts "#{num}/#{den}"
		else
			num1 = @y * a 
			den1 = @y * b
 			num2 = @x * b 
			den2 = @y * b
			n = num2 - num1
			mcd = gcd(n,den2)
			num = n/mcd
			den = den2/mcd
			puts "#{num}/#{den}"
		end	
	end
	def producto(a, b)
		num = @x * a
		den = @y * b
		mcd = gcd(num,den)
		num = num/mcd
		den = den/mcd
		puts "#{num}/#{den}"
	end
	def division(a, b)
		num = @x *b
		den = @y *a
		mcd = gcd(num,den)
		num = num/mcd
		den = den/mcd
		puts "#{num}/#{den}"
	end		
end

f1 = Fraccion.new(8,6)
puts "producto:"
f1.producto(1,3)
puts "division:"
f1.division(3,2)
puts "suma:"
f1.suma(3,3)
f1.suma(1,2)
puts "resta:"
f1.resta(3,3)
f1.resta(1,2)

