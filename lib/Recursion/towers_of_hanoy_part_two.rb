def hanoi_steps(number_of_discs)
    hanoi_mover(number_of_discs, 1, 2, 3)
end

def hanoi_mover(num,s,m,e)
  if num == 1
  puts  text_mover(s,e)
   return 
  end
  hanoi_mover(num-1,s,e ,m)
  puts text_mover(s,e)
  hanoi_mover(num-1,m,s,e)
end

def text_mover(starting,ending)
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
