require 'Alimento/Node.rb'

#
# Clase en Ruby que implementa una lista doblemente enlazada.
# Permite insertar o borrar elementos en cualquier lugar de la misma.
#
# Author::	Alejandro León Fernández  (alu0100973792@ull.edu.es)
#
class List
	include Enumerable
	attr_reader :head, :tail
	
	# Inicializa la cabeza y la cola de la lista vacía
	def initialize
		@head = nil
		@tail = nil
	end
	
	# Inserta un nodo con el valor value por delante
	def push_front (value)
		@head = Node.new(value, @head, nil)
		if(@tail == nil)
			@tail = @head
		else
			@head.next.prev = @head
		end
	end
	
	# Inserta un nodo con el valor value por detrás
	def push_back (value)
		@tail = Node.new(value, nil, @tail)
		if(@head == nil)
			@head = @tail
		else
			@tail.prev.next = @tail
		end
	end
	
	# Borra el primer nodo
	def pop_front
		if(@tail == @head)
			@tail = @head = nil
		else
			@head = @head.next
			@head.prev = nil
		end
	end
	
	# Borra el último nodo
	def pop_back
		if(@tail == @head)
			@tail = @head = nil
		else
			@tail = @tail.prev
			@tail.next = nil
		end
	end
	
	# Inserta un nodo con el valor value por delante del nodo position
	def insert (position, value)
		if(position.instance_of? Node)
			found = false
			aux = @head
			while (aux != nil) && !found
				if(aux == position)
					if(aux != @head)
						aux.prev = aux.prev.next = Node.new(value, aux, aux.prev)
					else
						aux.prev = @head = Node.new(value, aux, nil)
					end
					found = true
				end
				aux = aux.next
			end
		end
	end
	
	# Borra el nodo position
	def erase (position)
		if(position.instance_of? Node)
			aux = @head
			while aux != nil
				if(aux == position)
					if(aux != @head && aux != @tail)
						aux.prev.next = aux.next
						aux.next.prev = aux.prev
					elsif(aux == @head && aux == @tail)
						@head = @tail = nil
					elsif(aux == @tail)
						@tail = aux.prev
						@tail.next = nil
					elsif(aux == @head)
						@head = aux.next
						@head.prev = nil
					end
					aux.prev = aux.next = nil
				end
				aux = aux.next
			end
		end
	end
	
	# Le da el control al bloque recibido para el valor de cada nodo
	def each
		aux = @head
		while aux != nil
			yield aux.value
			aux = aux.next
		end
	end
end

