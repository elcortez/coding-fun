# You will be given an array of positive integers. The array should be sorted
# by the amount of perfect squares and reversed, that can be generated from each number permuting its digits.

def sort_by_perfsq(array)
  numbers = {}
  array.each do |n|
    numbers[n] ||= 0

    n.to_s.split('').permutation.to_a.uniq.each do |arr|
      sqrt = Math.sqrt(arr.join.to_i)
      numbers[n] += 1 if sqrt == sqrt.to_i
    end
  end

  sorted = array.sort do |x, y|
    numbers[x] > numbers[y] ? 1 : numbers[x] == numbers[y] ? x > y ? -1 : x == y ? 0 : 1 : -1
  end
  sorted.reverse
end

p sort_by_perfsq([715, 112, 136, 169, 144]) == [169, 144, 112, 136, 715]
p sort_by_perfsq([234, 61, 16, 441, 144, 728]) == [144, 441, 16, 61, 234, 728]
