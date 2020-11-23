def hanoi_steps(number_of_discs)
  the_mover(number_of_discs,1,2,3)
end

def the_mover(num,s,m,g)
  if num == 1
    puts peg_mover(s, g)
    return
  end
  the_mover(num-1,s,g,m)
  puts peg_mover(s, g)
  the_mover(num-1,m,s,g)

end


def peg_mover(starting, ending)
  "#{starting}->#{ending}"
end


# hanoi_steps(2)
# => 1->2
#    1->3
#    2->3

hanoi_steps(3)
# => 1->3
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

# hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3
