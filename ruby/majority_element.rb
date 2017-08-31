class MajorityElement
  def initialize(array)
    @array = array
  end

  def majority_element
    hash = @array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    # Here we build a hash with each element of the array and their occurences
    hash.each do |key, value|
      return "#{key} with #{value} occurences" if value > @array.length / 2
      # We can then check if any element is present in more than 50% of entries
    end
    "no majority element found"
  end
end
