
Node = Struct.new(:value, :next, :prev) do
	def <=>(other)
		value <=> other.value
	end
end