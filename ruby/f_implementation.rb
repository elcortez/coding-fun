# this is a modified fibonnaci example
class Implementation
  def initialize
  end

  def f(n, cache = {})
    # A recursive function uses lots calculation
    return 1 if n == 0
    return 3 if n == 1
    return cache[n] ||= 3 * f(n-1, cache) - f(n-2, cache)
    # to avoid that,  we can use a cache that will store data already calculated
  end
end
