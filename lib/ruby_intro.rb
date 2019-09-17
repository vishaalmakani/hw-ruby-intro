# When done, submit this entire file to the autograder.

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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
