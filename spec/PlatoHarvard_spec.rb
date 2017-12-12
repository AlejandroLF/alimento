require "spec_helper"

RSpec.describe PlatoHarvard do
	before :each do

	end

	it "esta definido" do
		mac_and_cheese = PlatoHarvard.new("Nombre") {}
	end
	
	it "funciona bien" do
		lo_que_sobra_de_la_semana = PlatoHarvard.new("Lo que sobra de la semana") do 
			vegetal "Tomate",	:porciones => 2
			fruta "Manzana",	:gramos => 100
			cereal "Arroz",		:tazas => 0.5
			proteina "Pollo",	:cantidad => 0.5
			aceite "Aceite de oliva",	:cucharadas => 5
		end
		puts lo_que_sobra_de_la_semana
	end

end