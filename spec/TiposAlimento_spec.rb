require "spec_helper"

RSpec.describe TiposAlimento do
	before :each do
		@huevofrito = TiposAlimento::HLH.new('Huevo frito', 14.1, 0.0, 19.5)
		@lechevaca = TiposAlimento::HLH.new('Leche vaca', 3.3, 4.8, 3.2)
	end

	it "Huevos, lácteos y helados definido correctamente" do
		expect(@huevofrito).to be_instance_of(TiposAlimento::HLH)
		expect(@huevofrito).not_to be_instance_of(Alimento::Alimento)
		expect(@huevofrito).to be_kind_of(TiposAlimento::HLH)
		expect(@huevofrito).to be_kind_of(Alimento::Alimento)
		expect(@huevofrito).to respond_to('valor_energetico')
		expect(@lechevaca).not_to be_instance_of(Alimento::Alimento)
		expect(@lechevaca).to be_kind_of(Alimento::Alimento)
	end

end