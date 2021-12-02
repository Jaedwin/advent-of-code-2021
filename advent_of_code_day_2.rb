input = File.readlines('input.txt', chomp: true).map(&:split)

# Puzzle 1

def dive(input)
  horizontal_pos = 0
  depth = 0
  input.each do |direction, distance|
    distance = distance.to_i
    direction == "forward" ? horizontal_pos += distance : (direction == "down" ? depth += distance : depth -= distance)
  end
  horizontal_pos * depth
end

# Puzzle 2

def dive(input)
  horizontal_pos = 0
  depth = 0
  aim = 0

  input.each do |direction, distance|
    distance = distance.to_i

    case direction
    when "forward"
      horizontal_pos += distance
      depth += aim*distance
    when "down"
      aim += distance
    else
      aim -= distance
    end
  end

  horizontal_pos*depth
end