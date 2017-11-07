require "spec_helper"

RSpec.describe List do
	before :each do
		@l = List.new();
		@l.push_front(1)
		@l.push_back(2)
		@l.push_back('tres')
	end

	it "tiene un punto con datos, siguiente y previo" do
		Node.new(3, nil, nil);
	end
	
	it "tiene cabeza y cola" do
		@l.head
		@l.tail
	end
	
	it "se puede insertar un elemento por delante" do
		@l.push_front(33)
		expect(@l.head.value).to eq(33)
	end
	
	it "se puede insertar un elemento por detrás" do
		@l.push_back('hola')
		expect(@l.tail.value).to eq('hola')
	end
	
	it "se pueden insertar varios elementos" do
		@l.push_back(23)
		@l.push_front('abc')
		@l.push_back(7.35)
		expect(@l.tail.prev.value).to eq(23)
	end

	it "se puede borrar un elemento por delante" do
		@l.pop_front
		expect(@l.head.value).to eq(2)
	end
	
	it "se puede borrar un elemento por detrás" do
		@l.pop_back
		expect(@l.tail.prev.value).to eq(1)
	end
end