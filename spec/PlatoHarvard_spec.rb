require "spec_helper"

RSpec.describe PlatoHarvard do
	before :each do

	end

	it "esta definido" do
		mac_and_cheese = PlatoHarvard.new("Nombre") {}
	end
	
	it "funciona bien" do
		pollo_a_la_manzana_con_arroz = PlatoHarvard.new("Pollo a la manzana con arroz") do 
			vegetal "Tomate",	:porciones => 2
			fruta "Manzana",	:gramos => 100
			cereal "Arroz",		:tazas => 0.5
			proteina "Pollo",	:cantidad => 0.5
			aceite "Aceite de oliva",	:cucharadas => 2
		end
		puts pollo_a_la_manzana_con_arroz
	end

end