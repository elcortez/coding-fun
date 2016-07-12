# The input is a string str of digits.
# Cut the string into chunks of size sz
# ignore the last chunk if its size is less than sz

# If a chunk represents an integer such as
#   the sum of the cubes of its digits is divisible by 2, reverse it
#   otherwise rotate it to the left by one position

# Put together these modified chunks and return the result as a string.

# require "pry-byebug"

def revrot(str, sz)
  arr = str.scan(/.{1,#{sz}}/)
  arr_int = arr.map {|x| x.split('').map{|x| x.to_i}}.map{|x| x.map {|y| y*y }}.map{|x| x.reduce(:+)}

  arr.each_with_index do |int, index|
    if int.length < sz
      arr.delete(int)
    elsif (arr_int[index] && arr_int[index] % 2 == 0)
      arr[index].reverse!
    else
      arr[index]
      arr[index] = arr[index].split('')
      arr[index].insert(-1, arr[index].delete_at(0))
    end
  end

  arr.join('')
end


# p revrot("123456987654", 6) #--> "234561876549"
# .map{|x| x.split('')}
p revrot("733049910872815764", 5) #--> "33047 91089 28157")
