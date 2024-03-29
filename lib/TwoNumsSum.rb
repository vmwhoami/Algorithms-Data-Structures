# numbers in the array are distinct
# return first two numbers that return the target
def TwoNumsSum(arr,target)
  h = {}
  arr.each do |num|
    return [target-num,num] if h[num]

    h[target - num] = true
  end
  'No valid pair exists'
end

# p TwoNumsSum([3, 5, -4, 8, 11, 1, -1, 6],10) #=> [11, -1] 
# p TwoNumsSum([0, -1, 2, -3, 1],-2) #=> [-3, 1]
# p TwoNumsSum([1, -2, 1, 0, 5],0) #=> No valid pair exists


def doubleLoop(arr,target)
  (0...arr.size).each do |num|
    first_num = arr[num]
    (num+1...arr.size).each do |num2|
      second_num = arr[num2]
      return [first_num,second_num] if first_num + second_num == target
    end
  end
  'No valid pair exists'
end


p doubleLoop([3, 5, -4, 8, 11, 1, -1, 6],10) #=> [11, -1] 
p doubleLoop([0, -1, 2, -3, 1],-2) #=> [-3, 1]
p doubleLoop([1, -2, 1, 0, 5],0) #=> No valid pair exists
