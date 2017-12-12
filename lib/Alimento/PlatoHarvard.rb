require "Alimento/TiposAlimento"

class PlatoHarvard
  attr_accessor :name, :ingredients

	def initialize(name, &block)
		huevofrito = TiposAlimento::HLH.new('Huevo frito', 14.1, 0.0, 19.5)
		lechevaca = TiposAlimento::HLH.new('Leche vaca', 3.3, 4.8, 3.2)
		yogurt = TiposAlimento::HLH.new('Yogurt', 3.8, 4.9, 3.8)
		cerdo = TiposAlimento::CarnesDerivados.new('Cerdo', 21.5, 0.0, 6.3)
		ternera = TiposAlimento::CarnesDerivados.new('Ternera', 21.1, 0.0, 3.1)
		pollo = TiposAlimento::CarnesDerivados.new('Pollo', 20.6, 0.0, 5.6)
		bacalao = TiposAlimento::PescadosMariscos.new('Bacalao', 17.7, 0.0, 0.4)
		atun = TiposAlimento::PescadosMariscos.new('Atún', 21.5, 0.0, 15.5)
		salmon = TiposAlimento::PescadosMariscos.new('Salmón', 19.9, 0.0, 13.6)
		aceite = TiposAlimento::Grasos.new('Aceite de oliva', 0.0, 0.2, 99.6)
		mantequilla = TiposAlimento::Grasos.new('Mantequilla', 0.7, 0.0, 83.2)
		chocolate = TiposAlimento::Grasos.new('Chocolate', 5.3, 47.0, 30.0)
		azucar = TiposAlimento::RicosEnCarbohidratos.new('Azúcar', 0.0, 99.8, 0.0)
		arroz = TiposAlimento::RicosEnCarbohidratos.new('Arroz', 6.8, 77.7, 0.6)
		lentejas = TiposAlimento::RicosEnCarbohidratos.new('Lentejas', 23.5, 52.0, 1.4)
		papas = TiposAlimento::RicosEnCarbohidratos.new('Papas', 2.0, 15.4, 0.1)
		tomate = TiposAlimento::VerdurasHortalizas.new('Tomate', 1.0, 3.5, 0.2)
		cebolla = TiposAlimento::VerdurasHortalizas.new('Cebolla', 1.3, 5.8, 0.3)
		calabaza = TiposAlimento::VerdurasHortalizas.new('Calabaza', 1.1, 4.8, 0.1)
		manzana = TiposAlimento::Frutas.new('Manzana', 0.3, 12.4, 0.4)
		platanos = TiposAlimento::Frutas.new('Platanos', 1.2, 21.4, 0.2)
		pera = TiposAlimento::Frutas.new('Pera', 0.5, 12.7, 0.3)
		@alimentos = [huevofrito,lechevaca,yogurt,cerdo,ternera,pollo,bacalao,atun,salmon,aceite,mantequilla,chocolate,
					  azucar,arroz,lentejas,papas,tomate,cebolla,calabaza,manzana,platanos,pera]
		
		@name = name
		@ingredients = []
		@valor_energetico = 0
		   
		instance_eval(&block) 

	end

	def to_s
		output = @name
		output << "\n#{'=' * @name.size}\nComposición nutricional:\n"
		output << "#{' ' * 15}     proteinas   glúcidos    lípidos  valor energético\n"

		@ingredients.each do |ingredient|
		  output << "#{ingredient.to_tabla}\n"
		end
		
		output << "Valor energético total:\t\t\t\t     #{@valor_energetico.round(2)}\n"

		output
	end
  
	def ingredient(name, options = {}, multiplier)
		ingredient = @alimentos.find{ |i| i.nombre == name }
		if(!ingredient.nil?)
			ingredient.proteinas *= multiplier
			ingredient.glucidos *= multiplier
			ingredient.lipidos *= multiplier
			@valor_energetico += ingredient.valor_energetico
			@ingredients << ingredient
		end
	end

	def vegetal(name, options = {})
		if(options[:porciones])
			multiplier = options[:porciones] / 2
		end
		ingredient(name, options, multiplier)
	end
	
	def fruta(name, options = {})
		if(options[:gramos])
			multiplier = options[:gramos] / 50
		end
		ingredient(name, options, multiplier)
	end
	
	def cereal(name, options = {})
		if(options[:tazas])
			multiplier = options[:tazas] * 2
		end
		ingredient(name, options, multiplier)
	end
	
	def proteina(name, options = {})
		if(options[:cantidad])
			multiplier = options[:cantidad] * 3
		end
		ingredient(name, options, multiplier)
	end
	
	def aceite(name, options = {})
		if(options[:cucharadas])
			multiplier = options[:cucharadas] / 2
		end
		ingredient(name, options, multiplier)
	end
	
end

