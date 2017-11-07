require "Alimento/version"

module Alimento
  	class Alimento
		attr_accessor :nombre, :proteinas, :glucidos, :lipidos

		def initialize(nombre, proteinas, glucidos, lipidos)
			@nombre = nombre
			@proteinas = proteinas
			@glucidos = glucidos
			@lipidos = lipidos
		end

		def to_s
			"#{@nombre}: #{@proteinas}g de proteínas, #{@glucidos}g de glúcidos y #{@lipidos}g de lípidos"
		end

		def valor_energetico 
			@proteinas*4 + @glucidos*4 + @lipidos*6
		end
	end
end