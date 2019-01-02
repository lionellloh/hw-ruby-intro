# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  output = 0
  arr.each_entry do |i|
    output += i
  end
  return output
end

input_arr = [1,5,4,2]
p sum(input_arr)

def max_2_sum arr
  if arr.length <= 1
    return arr.length == 1 ? arr[0] : 0
  end
  if arr[0] >= arr[1]
    biggest = arr[0]
    next_biggest = arr[1]
  else
    biggest = arr[1]
    next_biggest = arr[0]
  end

  arr[2,arr.length].each_entry do |i|
    if i > biggest
      biggest = next_biggest
    elsif i > next_biggest
      next_biggest = i
    end
  end
  biggest + next_biggest
end
p max_2_sum(input_arr)


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
