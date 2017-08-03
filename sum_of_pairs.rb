def sum_pairs(array, sum)
  return iterate_over_array(array, sum) if array.length <= 20
  super_common_number = array.group_by{|i| i}.max{|x,y| x[1].length <=> y[1].length}[0]
  return iterate_over_array(array - [super_common_number], sum)
  return nil
end

def iterate_over_array(array, sum)
  final_array = nil
  index_won = nil

  array.length.times do |first_index|
    first_number = array[first_index]
    array.each_with_index do |second_number, second_index|
      next if first_index == second_index

      if first_number + second_number == sum &&
        ((index_won == nil) || (index_won > second_index)) &&
        (second_index > first_index)
        index_won = second_index
        final_array = [first_number, second_number]
      end
    end
  end
  return final_array
end




p sum_pairs([1, 4, 8, 7, 3, 15], 8) == [1, 7]
p sum_pairs([1, -2, 3, 0, -6, 1], -6) == [0, -6]
p sum_pairs([20, -13, 40], -7) == nil
p sum_pairs([1, 2, 3, 4, 1, 0], 2) == [1, 1]
p sum_pairs([4, -2, 3, 3, 4], 8) == [4, 4]
p sum_pairs([0, 2, 0], 0) == [0, 0]
p sum_pairs([5, 9, 13, -3], 10) == [13, -3]
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]

# http://www.codewars.com/kata/sum-of-pairs/train/ruby
# Given a list of integers and a single sum value,
# return the first two values  (parse from the left please)
# in order of appearance that add up to form the sum.
