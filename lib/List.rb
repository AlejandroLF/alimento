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
		else
			@head.next.prev = @head
		end
	end
	
	def push_back (value)
		@tail = Node.new(value, nil, @tail)
		if(@head == nil)
			@head = @tail
		else
			@tail.prev.next = @tail
		end
	end
	
	def pop_front
		if(@tail == @head)
			@tail = @head = nil
		else
			@head = @head.next
			@head.prev = nil
		end
	end
	
	def pop_back
		if(@tail == @head)
			@tail = @head = nil
		else
			@tail = @tail.prev
			@tail.next = nil
		end
	end
end

