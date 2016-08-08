# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

my_calc = WhizBangCalculator.new

puts "1 plus 4 is #{my_calc.add(1, 4)}"

puts "6 minus 2 is #{my_calc.subtract(6, 2)}"

puts "3 times 9 is #{my_calc.multiply(3, 9)}"

puts "12 divided by 4 is #{my_calc.divide(12, 4)}"

puts "The square root of 81 is #{my_calc.square_root(81)}"

puts "The hypotenuse bounded by two sides sizes 10 and 15 is #{my_calc.hypotenuse(10, 15)}"

puts "3 to the power of 5 is #{my_calc.exponent(3, 5)}"