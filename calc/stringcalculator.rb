class StringCalculator

def add(nums)
  total=0
  newnums = nums.split(",")
  newnums.reduce(0){ |a,b|
    a+b.to_i
  }
end

end
