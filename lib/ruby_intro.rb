# When done, submit this entire file to the autograder.

# Part 1

def sum(in_array)
  # YOUR CODE HERE
  sumr=0
   if in_array.length == 0
     sumr=0
   elsif 
     #Enumerable
     sumr= in_array.reduce(:+)
   end

  return sumr
end

def max_2_sum(int_array)
  # YOUR CODE HERE
  heyr=0
  if int_array.length == 0
     heyr=0
     return heyr
  elsif int_array.length == 1
     heyr=int_array[0]
     return heyr
  end
  int_array.sort!.reverse!
  heyr= int_array[0] + int_array[1]  
  return heyr
end
 
def sum_to_n?(int_array,n)
  # YOUR CODE HERE
  return false if int_array.length == 0 
  int_array.each_with_index{ |val, index| 
      return true if int_array.find_index(n - val) && int_array.find_index(n - val ) != index
    }
  return false # default return false
end


# Part 2

def hello(name)
  # YOUR CODE HERE
   "Hello, #{name}"
  
end



def starts_with_consonant?(s)
  # YOUR CODE HERE
    !!(s[0] =~ /[qzyxwvtsrbcdfghjklmnp]+/i)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  
   if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0 
   end
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if price <0|| price ==0 ||isbn.empty? 
    
    @price = price
    
    @isbn = isbn
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
