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
