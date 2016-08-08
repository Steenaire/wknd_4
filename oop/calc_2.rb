# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleMath

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator
  include SimpleMath

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

my_calc = FancyCalculator.new

puts "1 plus 4 is #{my_calc.add(1, 4)}"

puts "6 minus 2 is #{my_calc.subtract(6, 2)}"

puts "3 times 9 is #{my_calc.multiply(3, 9)}"

puts "12 divided by 4 is #{my_calc.divide(12, 4)}"

puts "The square root of 81 is #{my_calc.square_root(81)}"