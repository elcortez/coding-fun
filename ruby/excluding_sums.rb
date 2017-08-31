def removNb(n)
  arr = []
  sum = ((n * (n+1)) / 2)
  (1..n).each do |x|
    y = ((sum % x) + x)
    arr << [x, y] << [y, x] if (x*y) == sum - (x+y)
  end
  arr
end


p removNb(10)


# A friend of mine takes a sequence of numbers from 1 to n (where n > 0).
# Within that sequence, he chooses two numbers, a and b.
# He says that the product of a and b should be equal to the sum of all numbers in the sequence, excluding a and b.
# Given a number n, could you tell me the numbers he excluded from the sequence?
#
# I tried it first with a double iteration but for large numbers it would make the programm too slow
