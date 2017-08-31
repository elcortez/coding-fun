def sort_algo(array)
  n = array.length
  # here the first step is to define the length of the given array
  loop do
    swapped = false
    # then we create a loop and instantiate a var “swapped” with the value false
    (n-1).times do |i|
    # now within that loop we iterate through each item of the array
      if array[i] > array[i + 1]
      # if the item is bigger than the one after that, we swap them
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
        # and we set the value of 'swapped' to true
      end
    end
    break if not swapped
    # if the value of 'swapped' is true, the loop starts again
  end
  array
  # when there is no more swap to do, the loop ends and we return the array
end

arr = ["celery", "carrot", "cabbage", "tomato"]

p sort_algo(arr)
# result : ["cabbage", "carrot", "celery", "tomato"]
