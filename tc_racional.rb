# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def setup
		@f1 = Fraccion.new(5,5)
		@f2 = Fraccion.new(2,3)
	end
	def test_simple
		assert_equal("1/1", @f1.to_s)
		assert_equal("1/3", @f2.producto(3,3).to_s)
	end
	def test_failure
		assert_equal("(5,5)", Fraccion.new(2,3).to_s)
	end
	def test_type_check
		assert_raise(RuntimeError) {Fraccion.new('1','1')}
	end
end
