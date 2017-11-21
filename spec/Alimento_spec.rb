require "spec_helper"

RSpec.describe Alimento do
	before :each do
		@huevofrito = Alimento::Alimento.new('Huevo frito', 14.1, 0.0, 19.5)
		@lechevaca = Alimento::Alimento.new('Leche vaca', 3.3, 4.8, 3.2)
		@yogurt = Alimento::Alimento.new('Yogurt', 3.8, 4.9, 3.8)
		@aceite = Alimento::Alimento.new('Aceite de oliva', 0.0, 0.2, 99.6)
		@cebolla = Alimento::Alimento.new('Cebolla', 1.3, 5.8, 0.3)
		
		@datos_glucosa = [[4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1],
						  [6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8,10.5,9.1, 8.9,8.3,7.7,7.6,7.5]]
		@datos_compota =  [[6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9],
						  [4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9]]
		@datos_yogurt = [[6.1, 6.6, 6.3, 6.3, 6.1, 6.9, 6.8, 6.5, 6.4, 6.9, 6.8, 6.5, 6.3, 6.2, 6.7, 6.2, 5.9, 5.8, 5.8, 5.8, 5.8, 5.8, 5.9, 6.2, 6.4],
						 [4.9, 4.9, 5.2, 5.8, 6.5, 7.0, 7.2, 7.3, 7.3, 6.6, 6.2, 6.1, 6.0, 6.1, 5.9, 5.9, 5.9, 5.9, 5.8, 5.8, 5.5, 5.5, 5.6, 5.9, 5.9]]
		@datos_chocolate = [[6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3, 6.2, 6.1, 5.9, 5.8, 6.1, 6.7, 6.7, 6.6, 6.7, 6.9, 7.2, 7.1],
							[4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9]]
	end

	it "has a version number" do
		expect(Alimento::VERSION).not_to be nil
	end

	it "tiene un método para obtener el nombre del alimento" do
		expect(@huevofrito.nombre).to eq('Huevo frito')
	end

	it "tiene un método para obtener la cantidad de proteninas" do
		expect(@lechevaca.proteinas).to eq(3.3)
	end

	it "tiene un método para obtener la cantidad de glucidos" do
		expect(@yogurt.glucidos).to eq(4.9)
	end

	it "tiene un método para obtener la cantidad de lipidos" do
		expect(@aceite.lipidos).to eq(99.6)
	end

	it "tiene un método para obtener el alimento formateado" do
		expect(@cebolla.to_s).to eq('Cebolla: 1.3g de proteínas, 5.8g de glúcidos y 0.3g de lípidos')
	end

	it "tiene un método para obtener el valor energético de un alimento" do
		expect((@lechevaca.valor_energetico-51.6).abs).to be < 0.001
		expect((@aceite.valor_energetico-598.4).abs).to be < 0.001
	end
	
	it "es comparable" do
		expect(@lechevaca == @aceite).to eq(false)
		expect(@lechevaca < @aceite).to eq(true)
	end
	
	it "tiene un método para calcular el Índice Glucémico" do
		# compota de manzana = 50.9?
		expect((Alimento::Alimento.new("Compota de manzana", 1, 1, 1).indice_glucemico(@datos_compota, @datos_glucosa) - 52.22).abs).to be < 0.01
		# yogurt = 47.3?
		expect((Alimento::Alimento.new("Yogurt", 1, 1, 1).indice_glucemico(@datos_yogurt, @datos_glucosa) - 41.29).abs).to be < 0.01
		# chocolate = 53.1?
		expect((Alimento::Alimento.new("Chocolate", 1, 1, 1).indice_glucemico(@datos_chocolate, @datos_glucosa) - 15.03).abs).to be < 0.01
	end
end



