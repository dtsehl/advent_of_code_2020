class Puzzle2
  def self.get_2020(table)
    final_values = []
    table.each do |num|
      subtrated_value = 2020 - num
      final_values << subtrated_value if table.include?(subtrated_value)
    end
    puts "The two values are #{final_values} and multiplied together the product is #{final_values[0] * final_values[1]}"
    final_values[0] + final_values[1]
  end

  def self.get_2020_with_3(table)
    nums = table.combination(3).find do |numbers|
      numbers.sum == 2020
    end
    puts "The three values are #{nums} and multiplied together the product is #{nums.reduce(:*)}"
    nums.sum
  end
end
