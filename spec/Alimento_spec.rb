require "spec_helper"

RSpec.describe Alimento do
	before :each do
		@huevofrito = Alimento::Alimento.new('Huevo frito', 14.1, 0.0, 19.5)
		@lechevaca = Alimento::Alimento.new('Leche vaca', 3.3, 4.8, 3.2)
		@yogurt = Alimento::Alimento.new('Yogurt', 3.8, 4.9, 3.8)
		@aceite = Alimento::Alimento.new('Aceite de oliva', 0.0, 0.2, 99.6)
		@cebolla = Alimento::Alimento.new('Cebolla', 1.3, 5.8, 0.3)
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
end



