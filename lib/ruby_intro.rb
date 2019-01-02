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
      biggest = i
    elsif i > next_biggest
      next_biggest = i
    end
  end
  biggest + next_biggest
end
p max_2_sum([1, 2, 3, 3])


def sum_to_n? arr, n
  hash = {}
  # You can't have 2 integers if the arr.length is <=1
  if arr.length <=1
    return false
  end
  # Initialize: put everything into a hash
  arr.each do |i|
    if hash.key?(i)
      hash[i] +=1
    else
      hash[i] =1
    end
  end

  arr.each do |i|
    complement = n - i
    if hash.key?(complement)
      if complement == i
        return hash[complement] > 1
      end
      return true
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  vowels = %w(a e i o u)
  non_letters = %w(! @ # $ % ^ & * ( ) )
  if s.empty?
    return false
  end
  p vowels
  p s[0].downcase
  if s[0].is_a? String and !non_letters.include? s[0]
    # If the first character is a vowel, then it does not start with a consonant
    return (vowels.include? s[0].downcase) ? false : true
  end
  false
end


def binary_multiple_of_4? s
  if s.length < 3
    if s == "00" or s == "0"
      return true
    end
    return false
  end
  s.each_char do |i|
    if i != "0" and i != "1"
      puts "2"
      return false
    end
  end

  if s[-1] == "0" and s[-2] == "0"
    return true
  end
   false
end


# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError, 'Either string is empty or price is <= 0. CHECK!'
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end
  def isbn=(new_isbn_string)
    @isbn = new_isbn_string
  end

  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    "$%.2f" % [@price]
  end
end
