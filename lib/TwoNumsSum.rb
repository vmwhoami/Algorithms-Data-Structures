# numbers in the array are distinct
# return first two numbers that return the target
def TwoNumsSum(arr,target)
  h = {}
  arr.each_with_index do |num,index|
    return [target-num,num] if h[num]
       
    res = target - num
    h[res] = true
  end
 
end

p TwoNumsSum([3, 5, -4, 8, 11, 1, -1, 6],10) #=> [11, -1] 

