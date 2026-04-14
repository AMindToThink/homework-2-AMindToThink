# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each{|e| sum += e}
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  biggest = nil
  biggest_i = nil
  second_big = nil
  arr.each_with_index do |e, i| 
    if (biggest == nil || biggest < e)
      biggest =  e
      biggest_i = i
    end
  end
  arr.each_with_index{|e, i| second_big  = i != biggest_i && (second_big == nil || second_big < e)  ? e : second_big}
  return biggest + second_big
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index.any?{|e, i| arr[(i+1)..-1].any?{|e2| e + e2 == n}}

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  re = /^[qwrtypsdfghjklzxcvbnm].*/i
  re.match?(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  re = /^([01]*00|0)$/
  re.match?(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError, "isbn empty or price leq 0"
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    "$%.2f"% @price
  end
end
