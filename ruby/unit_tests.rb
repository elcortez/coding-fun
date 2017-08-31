require_relative "largest_diff"
require_relative "majority_element"
require_relative "hexadecimal_regex"
require_relative "square"
require_relative "rectangle"
require_relative "f_implementation"
require "test/unit"

class TestImplementation < Test::Unit::TestCase
  def test_simple
    assert_equal(144, Implementation.new.f(5))
    assert_equal(377, Implementation.new.f(6))
    assert_equal(17711, Implementation.new.f(10))
  end
end

class TestSimpleArray < Test::Unit::TestCase
  def test_simple
    assert_equal(80, SimpleArray.new([1, 2, 6, 7, 8, 19, 3, 4, 2, 20, 100]).largest_diff)
    assert_equal(18, SimpleArray.new([1, 2, 6, 7, 8, 19, 3, 4, 2, 20]).largest_diff)
    assert_equal(16, SimpleArray.new([1, 2, 6, 7, 8, 19, 3, 4, 2]).largest_diff)
    assert_equal(16, SimpleArray.new([1, 2, 6, 7, 8, 19, 3, 4]).largest_diff)
    assert_equal(4, SimpleArray.new([1, 2, 6, 7, 8]).largest_diff)
    assert_equal(1, SimpleArray.new([1, 2]).largest_diff)
  end
end

class TestMajorityElement < Test::Unit::TestCase
  def test_simple
    assert_equal("1 with 2 occurences", MajorityElement.new([1, 1, 3]).majority_element)
    assert_equal("3 with 3 occurences", MajorityElement.new([1, 3, 3, "banana", 3]).majority_element)
    assert_equal("3 with 5 occurences", MajorityElement.new([1, "apple", 3, false, nil, 3, 3, 3, 3]).majority_element)
    assert_equal("no majority element found", MajorityElement.new([1, 3]).majority_element)
  end
end

class TestHexaRegex < Test::Unit::TestCase
  def test_simple
    assert_equal(["0acdadecf822eeff32aca5830e438cb54aa722e3", "0x142536ae56"], HexadecimalRegex.new("0acdadecf822eeff32aca5830e438cb54aa722e3-0x142536ae56").hexa_regex)
    assert_equal(["0x142DEA"], HexadecimalRegex.new("0x142DEA").hexa_regex)
    assert_equal(["0x", "142DEA"], HexadecimalRegex.new("0x-142DEA").hexa_regex)
    assert_equal(["8BADF00D"], HexadecimalRegex.new("8BADF00D ZZZ").hexa_regex)
    assert_equal(["0x0f4"], HexadecimalRegex.new(" --Y 0x0f4Z YY").hexa_regex)
  end
end

class SquareAndRectangle < Test::Unit::TestCase
  def test_simple
    assert_equal(8, Square.new(width: 2).perimeter_calculator)
    assert_equal(4, Square.new(width: 2).area_calculator)
    assert_equal(10, Rectangle.new(width: 2, height: 3).perimeter_calculator)
    assert_equal(6, Rectangle.new(width: 2, height: 3).area_calculator)
  end
end
