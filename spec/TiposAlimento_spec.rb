require "spec_helper"

RSpec.describe TiposAlimento do
	before :each do
		@huevofrito = TiposAlimento::HLH.new('Huevo frito', 14.1, 0.0, 19.5)
		@lechevaca = TiposAlimento::HLH.new('Leche vaca', 3.3, 4.8, 3.2)
		@yogurt = TiposAlimento::HLH.new('Yogurt', 3.8, 4.9, 3.8)
		@cerdo = TiposAlimento::CarnesDerivados.new('Cerdo', 21.5, 0.0, 6.3)
		@ternera = TiposAlimento::CarnesDerivados.new('Ternera', 21.1, 0.0, 3.1)
		@pollo = TiposAlimento::CarnesDerivados.new('Pollo', 20.6, 0.0, 5.6)
		@bacalao = TiposAlimento::PescadosMariscos.new('Bacalao', 17.7, 0.0, 0.4)
		@atun = TiposAlimento::PescadosMariscos.new('Atún', 21.5, 0.0, 15.5)
		@salmon = TiposAlimento::PescadosMariscos.new('Salmón', 19.9, 0.0, 13.6)
		@aceite = TiposAlimento::Grasos.new('Aceite de oliva', 0.0, 0.2, 99.6)
		@mantequilla = TiposAlimento::Grasos.new('Mantequilla', 0.7, 0.0, 83.2)
		@chocolate = TiposAlimento::Grasos.new('Chocolate', 5.3, 47.0, 30.0)
		@azucar = TiposAlimento::RicosEnCarbohidratos.new('Azúcar', 0.0, 99.8, 0.0)
		@arroz = TiposAlimento::RicosEnCarbohidratos.new('Arroz', 6.8, 77.7, 0.6)
		@lentejas = TiposAlimento::RicosEnCarbohidratos.new('Lentejas', 23.5, 52.0, 1.4)
		@papas = TiposAlimento::RicosEnCarbohidratos.new('Papas', 2.0, 15.4, 0.1)
		@tomate = TiposAlimento::VerdurasHortalizas.new('Tomate', 1.0, 3.5, 0.2)
		@cebolla = TiposAlimento::VerdurasHortalizas.new('Cebolla', 1.3, 5.8, 0.3)
		@calabaza = TiposAlimento::VerdurasHortalizas.new('Calabaza', 1.1, 4.8, 0.1)
		@manzana = TiposAlimento::Frutas.new('Manzana', 0.3, 12.4, 0.4)
		@platanos = TiposAlimento::Frutas.new('Platanos', 1.2, 21.4, 0.2)
		@pera = TiposAlimento::Frutas.new('Pera', 0.5, 12.7, 0.3)
		@array = [@huevofrito,@lechevaca,@yogurt,@cerdo,@ternera,@pollo,@bacalao,@atun,@salmon,@aceite,@mantequilla,@chocolate,
				  @azucar,@arroz,@lentejas,@papas,@tomate,@cebolla,@calabaza,@manzana,@platanos,@pera]
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

	it "Benchmark" do
		array_ordenado = []
		array_ordenado = @array.dup
		for i in 2..array_ordenado.size
			for j in 0..array_ordenado.size-i
				if array_ordenado[j] > array_ordenado[j+1]
					aux = array_ordenado[j]
					array_ordenado[j] = array_ordenado[j+1]
					array_ordenado[j+1] = aux
				end
			end
		end
		
		array_ordenado = []
		lista = List.new
		@array.each do |i|
			lista.push_back(i)
		end
		lista = lista.sort
		lista.each do |i|
			array_ordenado.push(i)
		end
			
		array_ordenado = []
		array_ordenado = @array.sort
	end

end