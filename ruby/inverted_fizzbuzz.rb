def fizz_buzz(array)
  raise unless array.is_a?(Array)
  final_arr = []
  array.each do |x|
    if (x % 3 == 0) && (x % 5 == 0)
      final_arr << "fizzbuzz"
    elsif x % 3 == 0
      final_arr << "fizz"
    elsif x % 5 == 0
      final_arr << "buzz"
    else
      final_arr << x
    end
  end
  return final_arr
end




def inverted_fizz_buzz(array)
  # this version does not quite work perfectly
  # i do get sequencing but not the shortest one
  raise unless array.is_a?(Array)
  fizz_array = fizz_buzz((1..100).to_a)
  numbers_arr = []

  10.times do
    temp_fizz = []
    temp_fizz += array

    fizz_array.each_with_index do |x, index|
      temp_fizz.each do |y|
        if y == x
          numbers_arr << index + 1
          temp_fizz.shift
          fizz_array[0..index] = fizz_array[0..index].map! {|x| x = "x"}
          break
        else
          break
        end
      end
    end
  end

  numbers_arr.each_slice(array.length).to_a
end

p inverted_fizz_buzz(["fizz", "buzz", "fizz"])
