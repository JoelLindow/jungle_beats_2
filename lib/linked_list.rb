require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @node_count = 0
  end

  def append(arg)
    current_node = @head
    @node_count += 1
      if @head.nil?
        @head = Node.new(arg)
      else
        while current_node.next_node != nil
          current_node = current_node.next_node
        end
        current_node.next_node = Node.new(arg)
      end
  end

  def count
    @node_count
  end

  def to_string
    current_node = @head
    text = ""
    while current_node != nil
      text += (current_node.data + " ")
      current_node = current_node.next_node
    end
    text[0..-2]
  end

end
