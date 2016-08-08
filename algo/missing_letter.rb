# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  start_index = 0
  reference = "abcdefghijklmnopqrstuvwxyz".split("")
  sorted_range = range.split("").sort
  missing_letters = []

  reference.each_with_index do |letter, index|
    if sorted_range[0] == letter
      start_index = index
    end
  end

  sorted_range.each do |letter|
    unless letter == reference[start_index]
      missing_letters << reference[start_index]
      start_index+=1 #If a letter is missing, need to add twice to skip over to the next one
    end
    start_index+=1
  end

  if missing_letters.any?
    return missing_letters.join("")
  else
    return nil
  end

end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("ace")

puts "Your method returned:"
puts result
puts

if result == "bd"
  puts "PASS!"
else
  puts "F"
end