require 'csv'
require 'minitest/autorun'
require_relative 'puzzle_1'

class Puzzle1Test < Minitest::Test
  def test_it_gets_2020
    table = CSV.read("puzzle_input.csv", converters: :numeric).flatten
    assert_equal 2020, Puzzle1.get_2020(table)
  end
end
