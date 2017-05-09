require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require "pry"

class LinkedListTest < Minitest::Test

  def test_head_of_list_starts_at_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_that_append_can_return_data
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_that_head_is_an_instance_of_node_when_you_append
    list = LinkedList.new
    list.append("doop")
    assert_instance_of Node, list.head
  end

  def test_that_head_knows_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_it_can_count_one_node_in_the_list
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_it_returns_a_string_of_all_data_in_the_list
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_appending_for_second_time_sets_next_node_to_an_instance_of_node
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_instance_of Node, list.head.next_node
    assert_equal "deep", list.head.next_node.data
  end

  def test_it_can_count_2_nodes_in_the_linked_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

end
