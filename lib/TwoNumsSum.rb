# numbers in the array are distinct
# return first two numbers that return the target
def TwoNumsSum(arr,target)
  h = {}
  arr.each_with_index do |num,index|
    return [target-num,num] if h[num]

    h[target - num] = true
  end
  'No valid pair exists'
end

p TwoNumsSum([3, 5, -4, 8, 11, 1, -1, 6],10) #=> [11, -1] 
p TwoNumsSum([0, -1, 2, -3, 1],-2) #=> [-3, 1]
p TwoNumsSum([1, -2, 1, 0, 5],0) #=> No valid pair exists
