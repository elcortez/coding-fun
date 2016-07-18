def divisors(n)
  arr = []
  (2..n-1).each { |x| arr << x if n % x == 0 }
  arr.any? ? arr : "#{n} is prime"
end

p divisors(12) #should return [2,3,4,6]
p divisors(25) #should return [5]
p divisors(13) #should return "13 is prime"
