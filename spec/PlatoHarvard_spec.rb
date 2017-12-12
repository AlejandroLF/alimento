require "spec_helper"

RSpec.describe PlatoHarvard do
	before :each do

	end

	it "esta definido" do
		mac_and_cheese = PlatoHarvard.new("Nombre") {}
	end
	
	it "funciona bien" do
		lo_que_sobra_de_la_semana = PlatoHarvard.new("Lo que sobra de la semana") do 
			vegetal "Tomate",	:porcion => "2 piezas pequeñas"
			fruta "Manzana",	:porcion => "1 unidad"
			cereal "Arroz",		:porcion => "1 taza"
			proteina "Pollo",	:porcion => "1 unidad"
			aceite "Aceite de oliva",	:porcion => "5 cucharadas"
		end
		puts lo_que_sobra_de_la_semana
	end

end