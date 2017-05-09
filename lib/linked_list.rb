require './lib/node'
require 'pry'

class LinkedList
attr_reader :head

  def initialize
    @head = nil
    @node_count = 0
  end

  def append(arg)
    @node_count += 1
    if @head.nil?
      @head = Node.new(arg)
    else
      @head.next_node = Node.new(arg)
    end
    arg
  end

  def count
    @node_count
  end

  def to_string
    head.data
  end

end
