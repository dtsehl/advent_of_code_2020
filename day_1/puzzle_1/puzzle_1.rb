class Puzzle1
  def self.get_2020(table)
    final_values = []
    table.each do |num|
      subtrated_value = 2020 - num
      final_values << subtrated_value if table.include?(subtrated_value)
    end
    puts "The two values are #{final_values} and multiplied together the product is #{final_values[0] * final_values[1]}"
    final_values[0] + final_values[1]
  end
end
