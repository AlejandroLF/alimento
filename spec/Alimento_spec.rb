require "spec_helper"

RSpec.describe Alimento do
  before :each do
    @huevofrito = Alimento.new('Huevo frito', 14.1, 0.0, 19.5)
    @lechevaca = Alimento.new('Leche vaca', 3.3, 4.8, 3.2)
    @yogurt = Alimento.new('Yogurt', 3.8, 4.9, 3.8)
    @aceite = Alimento.new('Aceite de oliva', 0.0, 0.2, 99.6)
    @cebolla = Alimento.new('Cebolla', 1.3, 5.8, 0.3)
  end

  it "has a version number" do
    expect(Alimento::VERSION).not_to be nil
  end

end
