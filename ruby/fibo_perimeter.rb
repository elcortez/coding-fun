def perimeter(n)
  return 4 * fibs(n).reduce(:+)
end

def fibs(n)
  return [1] if n == 0
  result = [1,1]
  i = 1
  while i < n
    result << result[-1] + result[-2]
    i += 1
  end
  result
end

p perimeter(75643)


# The recursive fibonacci method is too slow for very big numbers

# def perimeter(n)
#   test = 0
#   (1..n+1).each do |n|
#     test += fib(n) * 4
#   end
#   test
# end

# def fib(n, cache = {})
#   return n if n == 0 || n == 1
#   cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
# end

# p fib(8189) => MAX amount that ruby handles before returning the "stack level too deep" error
# p perimeter(4000) => 8 seconds time process

