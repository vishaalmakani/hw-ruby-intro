# Vishaal Makani
# CSCE 431 - 502

# Part 1

def sum arr
  sum = 0
  if arr.empty? == true
    return 0
  else
    arr.each { |x| sum+=x}
    return sum
  end
end

def max_2_sum arr
  # computes the sum of the max two elements in an array
  sum = 0
  length = arr.length
  if arr.empty? == true
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort
    sum = arr[length-1]+arr[length-2]
    return sum
  end
end

def sum_to_n? arr, n
  #returns true if any two elements in the array of integers sum to n
  sum = 0
  if arr.empty? == true || arr.length == 1
    return false
  else
    arr = arr.sort
    left = 0
    right = arr.length-1
    while left < right
      sum = arr[left]+arr[right]
      if sum == n
        return true
      elsif sum < n
        left+=1
      elsif sum > n
        right-=1
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # takes a string representing a name and returns the string "Hello, " concatenated with the name
  return "Hello, " + name
end

def starts_with_consonant? s
  #takes a string and returns true if it starts with a consonant and false otherwise. 
  if s.start_with?('a','A','e','E','i','E','o','O','u','U')
    return false
  elsif (s[0] =~ /[[:alpha:]]/) == nil  #accounting for strings that do not start with a letter
    return false
  elsif s.length == 0  #empty string case
    return false
  else  #none of the above turn out to be true, then it starts with a consonant
    return true
  end
end

def binary_multiple_of_4? s
  # takes a string and returns true if the string represents a binary number that is a multiple of 4.
  num_10 = s.to_i(2)
  if s.include?('0') && s.length == 1 #.to_i(2) returns 0 even when it isn't a valid binary string, 
    return true                       #had to differentiate a valid 0 from invalid binary 0
  elsif num_10 == 0 || s.length == 0  #invalid binary or empty string return false
    return false
  elsif (num_10 % 4) == 0
    return true
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn #getter
    @isbn
  end
  def isbn=(isbn) #setter
    @isbn = isbn
  end
  
  def price #getter
    @price
  end
  def price=(price) #setter
    @price = price
  end
  
  def price_as_string
    return "$" + ('%.2f' % @price)
  end
  
end
