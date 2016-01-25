# Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.

# Stack is a LIFO data structure, meaning the last element added to the stack will be the first one removed from it.

# Queue is a FIFO data structure, meaning the first element added to the stack will be the first one removed from it

class Stack

  attr_accessor :stack

  def initialize
    @stack = []
  end

  def add(obj)
    stack.push(obj)
  end

  def remove
    stack.pop
  end

end

class Queue

  attr_accessor :queue

  def initialize
    @queue = []
  end

  def add(obj)
    queue.push(obj)
  end

  def remove
    queue.shift
  end

end
