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
		
		# Imprime el alimento con formato para una tabla
		def to_tabla
			"#{@nombre}#{' ' * (15-@nombre.size)}     #{@proteinas.round(1)}         #{@glucidos.round(1)}         #{@lipidos.round(1)}      #{valor_energetico.round(2)}"
		end

		# Calcula el valor energético del alimento
		def valor_energetico 
			@proteinas*4 + @glucidos*4 + @lipidos*6
		end
		
		# Define cómo comparar 2 alimentos
		def <=>(other)
			valor_energetico <=> other.valor_energetico
		end
		
		def aibc (mediciones)
			base = mediciones[0]
			posteriores = mediciones[1..mediciones.size-1]
			posteriores.zip(mediciones).reject{ |i| i[0] < base}.map{ |i| i[0]+i[1]-2*base}.map{ |i| i * 2.5}.reduce(:+)
		end
		
		def indice_glucemico (datos_alimento, datos_glucosa)
			aibcs_alimento = datos_alimento.map { |i| aibc(i)}
			aibcs_glucosa = datos_glucosa.map { |i| aibc(i)}
			suma = aibcs_alimento.zip(aibcs_glucosa).map{ |i| i[0]/i[1]*100}.reduce(:+)
			suma / datos_alimento.count
		end
	end
end
