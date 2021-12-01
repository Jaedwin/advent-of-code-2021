input = File.readlines('advent_of_code_day_1_input.txt').map(&:to_i)

# Puzzle 1

def count_increments(input)
  count = 0
  input.each_with_index do |val, index|
    next if index == 0
    count+=1 if val > input[index-1]
  end
  count
end

# Puzzle 2

def sums_of_3(input)
  input.each_with_index.map do |val, index|
    next if index > input.length-3
    input[index..index+2].sum
  end.compact
end