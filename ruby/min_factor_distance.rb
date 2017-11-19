def min_distance(number)
  min_distance = nil

  arr = (1..number).to_a.map{ |n| n if number.to_f/n == number/n}.compact

  arr.each_with_index do |n, index|
    break unless arr[index + 1]
    distance = arr[index + 1] - n
    min_distance = distance if (!min_distance || min_distance > distance)
  end

  min_distance
end
