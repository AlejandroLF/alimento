require "Alimento/version"

module Alimento
	#
	# Clase en Ruby que describe un alimento en función de sus macronutrientes.
	# Permite obtener las cantidades de proteínas, glúcidos y lípidos en gramos,
	# además del nombre del alimento, tanto por separado como formateados.
	# También es posible conocer su valor energético.
	#
	# Author::	Alejandro León Fernández  (alu0100973792@ull.edu.es)
	#
  	class Alimento
		include Comparable
		attr_accessor :nombre, :proteinas, :glucidos, :lipidos

		# Guarda el nombre y la cantidad de cada macronutriente en gramos
		def initialize(nombre, proteinas, glucidos, lipidos)
			@nombre = nombre
			@proteinas = proteinas
			@glucidos = glucidos
			@lipidos = lipidos
		end

		# Imprime el alimento formateado (nombre y gramos de cada macronutriente)
		def to_s
			"#{@nombre}: #{@proteinas}g de proteínas, #{@glucidos}g de glúcidos y #{@lipidos}g de lípidos"
		end

		# Calcula el valor energético del alimento
		def valor_energetico 
			@proteinas*4 + @glucidos*4 + @lipidos*6
		end
		
		# Define cómo comparar 2 alimentos
		def <=>(other)
			valor_energetico <=> other.valor_energetico
		end
	end
end
