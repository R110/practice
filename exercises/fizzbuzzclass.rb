class Fizzbuzz
  def check(num)
      if num % 5 ==0 && num % 3==0
        return "Fizzbuzz"
      elsif num %5==0
        return "Buzz"
      elsif num%3==0
        return "Fizz"
      else
         return  num
       end
  end

end
