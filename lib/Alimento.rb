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
	end
end
