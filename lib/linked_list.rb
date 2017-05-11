require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(arg)
    if @head.nil?
      @head = Node.new(arg)
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(arg)
    end
    arg
  end

  def count
    current_node = @head
    counter = 0
    until current_node == nil
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  def to_string
    current_node = @head
    text = ""
    until current_node == nil
      text += (current_node.data + " ")
      current_node = current_node.next_node
    end
    text[0..-2]
  end

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else
      previous_head = @head
      @head = Node.new(data)
      @head.next_node = previous_head
    end
  end

  def insert(index, data) #<--- REFACTOR: split up further to give this method less individual responsibility!
    current_node = @head
    new_node = Node.new(data)         #<-- Making new node to insert. "THE DANGLER"

    index.times do
      current_node = current_node.next_node
    end

    new_node.next_node = current_node  #<-- Setting pointer (next node) on "THE DANGLER"
    place_node_in_list(new_node, index)
  end

  def place_node_in_list(new_node, index)
    current_node = @head               #<-- for inserted node (new node)
    counter = 0                        #<-- to node after insertion point

    until counter == (index - 1) #<-- Setting pointer for "previous node"
      counter += 1
      current_node = current_node.next_node
    end
    current_node.next_node = new_node #<-- Setting new pointer on pre-insert node
  end
end
