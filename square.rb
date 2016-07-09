class Square
  attr_reader :width

  def initialize(attributes = {})
    @width = attributes[:width]
  end

  def area_calculator
    @width * @width
  end

  def perimeter_calculator
    @width * 4
  end
end

