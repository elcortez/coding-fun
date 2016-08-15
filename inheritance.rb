class Rectangle
  attr_reader :width, :height

  def initialize(attributes = {})
    @width = attributes[:width]
    @height = attributes[:height]
  end

  def area_calculator
    @width * @height
  end

  def perimeter_calculator
    (@width * 2) + (@height * 2)
  end
end

class Square < Rectangle
  attr_reader :width, :height
  def initialize(attributes = {})
    @width = attributes[:width]
    @height = @width
  end
end
