class Queue
  def initialize
  	@store = Array.new
  end
  
  def dequeue
  	@store.shift
  end
  
  def enqueue(element)
  	@store << element
  end
  
  def size
  	@store.length
  end
end
