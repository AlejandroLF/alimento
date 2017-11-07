require 'Node.rb'

class List
	attr_reader :head, :tail
	
	def initialize
		@lista = []
		@head = nil
		@tail = nil
	end
	
	def push_front (value)
		@head = Node.new(value, @head, nil)
		if(@tail == nil)
			@tail = @head
		end
	end
	
	def push_back (value)
		@tail = Node.new(value, nil, @tail)
		if(@head == nil)
			@head = @tail
		end
	end
end

