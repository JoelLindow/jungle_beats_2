require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require "pry"

class NodeTest < Minitest::Test

  def test_node_can_take_in_data
    node = Node.new("plop")
    assert_instance_of Node, node
  end

  def test_node_can_return_the_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end


end
