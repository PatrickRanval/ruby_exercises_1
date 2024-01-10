# 3a. The script aims to define a method count_words that takes a sentence as a string and returns a hash with each word as a key and its frequency as the value.
# The current implementation is flawed and needs debugging.

def count_words(sentence)
  senArr = sentence.split(' ')
  senHash = {}
  senArr.each do |word|
    if senHash.has_key?(word)
      senHash[word] += 1
    else
      senHash[word] = 1
    end
  end
  senHash
end

# 3b. The script is intended to define a method calculate_factorial that takes an integer and returns its factorial. The current implementation is not functioning correctly.

def calculate_factorial(number)
  if number == 0
    result = 1
  elsif number > 0
    result = number
    until number == 1
      number -= 1
      result *= number
    end
  else
    result = 'Error: Negative number'
  end
  result
end

# 3c. The script is meant to define a method find_median that takes an array of numbers, sorts it, and returns the median value. The current implementation is not working correctly.

def find_median(numbers)
  if numbers == []
    nil
  else
    numbers = numbers.sort
    if numbers.length.even?
      index1 = numbers.length / 2 - 1
      index2 = numbers.length / 2
      median = (numbers[index1].to_f + numbers[index2].to_f) / 2
    elsif numbers.length.odd?
      index = numbers.length / 2
      median = numbers[index]
    end
  end
end
