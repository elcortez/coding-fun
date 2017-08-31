class Polygon
  attr_accessor :sides
  @@sides = 10
  def self.sides
    @@sides
  end
  def initialize(attributes = {})
    @sides = attributes[:sides]
  end
end

p Polygon.sides #=> class var : 10
pol = Polygon.new(sides: 8)
p pol.sides #=> instance var : 8
