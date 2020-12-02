require 'csv'
require 'minitest/autorun'
require_relative 'puzzle_2'

class Puzzle2Test < Minitest::Test
  def test_it_gets_2020
    table = CSV.read("puzzle_input.csv", converters: :numeric).flatten
    assert_equal 2020, Puzzle2.get_2020_with_3(table)
  end
end
