def fib(n, cache = {})
  return n if n == 0 || n == 1
  cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
end

p fib(10)
