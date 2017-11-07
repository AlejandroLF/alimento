require "spec_helper"

RSpec.describe List do
	before :each do
		@l = List.new();
	end

	it "tiene un punto con datos, siguiente y previo" do
		Node.new(3, nil, nil);
	end
	
	it "tiene cabeza y cola" do
		@l.head
		@l.tail
	end

end