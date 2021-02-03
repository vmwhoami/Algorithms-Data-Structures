def move(starting, goal)
  intermediate = ([1, 2, 3] - [starting, goal]).first
  result = "#{peg_mover(starting, intermediate)} "
  result += "#{peg_mover(starting, goal)} "
  result += "#{peg_mover(intermediate, goal)} "
  result
end

def peg_mover(starting, ending)
  "#{starting}->#{ending}"
end

puts move(1, 3)
# # => 1->2 1->3 2->3

puts move(2, 3)
# # => 2->1 2->3 1->3
# puts move(1, 2)

# puts move(2, 1)
