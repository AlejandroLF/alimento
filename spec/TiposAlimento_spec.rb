require "spec_helper"

RSpec.describe TiposAlimento do
	before :each do
		@huevofrito = TiposAlimento::HLH.new('Huevo frito', 14.1, 0.0, 19.5)
		@lechevaca = TiposAlimento::HLH.new('Leche vaca', 3.3, 4.8, 3.2)
		@ternera = TiposAlimento::CarnesDerivados.new('Ternera', 21.1, 0.0, 3.1)
		@atun = TiposAlimento::PescadosMariscos.new('Atún', 21.5, 0.0, 15.5)
		@chocolate = TiposAlimento::Grasos.new('Chocolate', 5.3, 47.0, 30.0)
		@papas = TiposAlimento::RicosEnCarbohidratos.new('Papas', 2.0, 15.4, 0.1)
		@tomate = TiposAlimento::VerdurasHortalizas.new('Tomate', 1.0, 3.5, 0.2)
		@manzana = TiposAlimento::Frutas.new('Manzana', 0.3, 12.4, 0.4)
	end

	it "Huevos, lácteos y helados definida correctamente" do
		expect(@huevofrito).to be_instance_of(TiposAlimento::HLH)
		expect(@huevofrito).not_to be_instance_of(Alimento::Alimento)
		expect(@huevofrito).to be_kind_of(TiposAlimento::HLH)
		expect(@huevofrito).to be_kind_of(Alimento::Alimento)
		expect(@huevofrito).to respond_to('valor_energetico')
		expect(@lechevaca).not_to be_instance_of(Alimento::Alimento)
		expect(@lechevaca).to be_kind_of(Alimento::Alimento)
	end
	
	it "Carnes y derivados definida correctamente" do
		expect(@ternera).to be_instance_of(TiposAlimento::CarnesDerivados)
		expect(@ternera).not_to be_instance_of(Alimento::Alimento)
		expect(@ternera).to be_kind_of(TiposAlimento::CarnesDerivados)
		expect(@ternera).to be_kind_of(Alimento::Alimento)
		expect(@ternera).to respond_to('valor_energetico')
	end
	
	it "Pescados y mariscos definida correctamente" do
		expect(@atun).to be_instance_of(TiposAlimento::PescadosMariscos)
		expect(@atun).not_to be_instance_of(Alimento::Alimento)
		expect(@atun).to be_kind_of(TiposAlimento::PescadosMariscos)
		expect(@atun).to be_kind_of(Alimento::Alimento)
		expect(@atun).to respond_to('valor_energetico')
	end
	
	it "Alimentos grasos definida correctamente" do
		expect(@chocolate).to be_instance_of(TiposAlimento::Grasos)
		expect(@chocolate).not_to be_instance_of(Alimento::Alimento)
		expect(@chocolate).to be_kind_of(TiposAlimento::Grasos)
		expect(@chocolate).to be_kind_of(Alimento::Alimento)
		expect(@chocolate).to respond_to('valor_energetico')
	end
	
	it "Alimentos ricos en carbohidratos definida correctamente" do
		expect(@papas).to be_instance_of(TiposAlimento::RicosEnCarbohidratos)
		expect(@papas).not_to be_instance_of(Alimento::Alimento)
		expect(@papas).to be_kind_of(TiposAlimento::RicosEnCarbohidratos)
		expect(@papas).to be_kind_of(Alimento::Alimento)
		expect(@papas).to respond_to('valor_energetico')
	end
	
	it "Verduras y hortalizas definida correctamente" do
		expect(@tomate).to be_instance_of(TiposAlimento::VerdurasHortalizas)
		expect(@tomate).not_to be_instance_of(Alimento::Alimento)
		expect(@tomate).to be_kind_of(TiposAlimento::VerdurasHortalizas)
		expect(@tomate).to be_kind_of(Alimento::Alimento)
		expect(@tomate).to respond_to('valor_energetico')
	end
	
	it "Frutas definida correctamente" do
		expect(@manzana).to be_instance_of(TiposAlimento::Frutas)
		expect(@manzana).not_to be_instance_of(Alimento::Alimento)
		expect(@manzana).to be_kind_of(TiposAlimento::Frutas)
		expect(@manzana).to be_kind_of(Alimento::Alimento)
		expect(@manzana).to respond_to('valor_energetico')
	end

end