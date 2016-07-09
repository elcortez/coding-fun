class HexadecimalRegex
  def initialize(string)
    @string = string
  end
  def hexa_regex
    arr = []
    temp_arr = []
    # we start by creating a temporary and a final array
    my_array = @string.split('')
    # and we turn our string into an array
    my_array.each_with_index do |i, index|
      # we can now iterate through the array
      if i.match(/[[:xdigit:]]/)
        temp_arr << i
        # if we match a hexadecimal number we add it to the temp array
        temp_arr << my_array[index + 1] if (i == "0" && my_array[index + 1] == "x")
        # if we match '0x' we add these two together
      else
        next if (i == "x" && my_array[index - 1] == "0")
        # if we matched '0x' we won't need to iterate over 'x' alone
        arr += [temp_arr.join('')] if temp_arr.any?
        # if we run into a char that does not match we put whatever we have in our final array
        temp_arr.clear
        # and then we can clear our temporary array and go again
      end
    end
    arr += [temp_arr.join('')] if temp_arr.any?
    # at the end of the process we can put whatever we have left into our final array
    arr
  end
end

