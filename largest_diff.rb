class SimpleArray

  def initialize(array)
    raise unless array.is_a?(Array)
    @array = array
  end

  def largest_diff
    max_diff = 0
    # We set a first var at value 0
    @array.each_with_index do |val, index|
      # Then we iterate over the array
      comp = [@array[index], @array[index + 1]]
      diff = comp.max - comp.min if @array[index + 1]
      # having the max an min lets us get the difference
      max_diff = diff if (diff && diff > max_diff)
      # if that difference is higher than the original max_diff var, we change it
    end
    max_diff
  end
end

