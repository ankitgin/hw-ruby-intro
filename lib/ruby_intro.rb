# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
   if arr.length ==0 then
    return 0
   else return arr.sum
   end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length ==0 then
    return 0
  elsif arr.length ==1 then
    return arr[0]
  else
    arr = arr.sort
    arr.each do |num|
    #puts num
  end
    return arr[arr.length-1] + arr[arr.length-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  map = {}
  arr.each do |num|
    if map.has_key? (num)  then
      return true
    else
      map[n-num] =1
    end
  end
    return false
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, #{name}"
  #puts str
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length ==0 
    return false
  end
  map = {'a'=> 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u'=> 1}
  #puts s[0].downcase
  if (!s[0].downcase.match?(/[[:alpha:]]/))
    return false
  elsif map.has_key? (s[0].downcase)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #puts s
  
  if s.length ==0
    return false
  end
  
    
  #checking for valid binary s
  for i in 0..(s.length-1)
    if (s[i]!='0' && s[i]!= '1')
      #puts "aa"
      return false
    end
  end
  
  num = s.to_i(2)
  #puts num
  return num%4 == 0
  
  # if !(/[01]/).match(s) 
  #   return false
  # end
  # if s.to_i%4 ==0
  #   return true
  # else
  #   return false
  # end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE

  def initialize(isbn, price)             #default constrcutor
    @isbn = isbn 
    @price = price
    
    raise ArgumentError.new(
    "Expected isbn length greater than 0, got #{isbn.length}"
    ) if isbn.length ==0
    
    raise ArgumentError.new(
    "Expected price greater than 0, got #{price}"
    ) if price <=0
    
  end
  
  def isbn(isbn) 
    @isbn = isbn 
    
  raise ArgumentError.new(
    "Expected isbn length greater than 0, got #{isbn.length}"
  ) if isbn.length ==0
  
  end
  
  
  def price_as_string()
    format("$%.2f", @price)
  end
  
    attr_reader :isbn
     attr_writer :isbn

    attr_reader :price
     attr_writer :price


  # def initialize(price) 
  #   @price = price 
  # end
  
end
