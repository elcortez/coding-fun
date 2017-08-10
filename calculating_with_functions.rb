%w[zero one two three four five six seven eight nine].each_with_index do |name, n|
 define_method(name) do |arg=nil|
  arg == nil ? n.to_f : n.method(arg[:operator]).(arg[:operand])
 end
end


def minus(operand)
 { operator: '-', operand: operand }
end

def times(operand)
 { operator: '*', operand: operand }
end

def divided_by(operand)
 { operator: '/', operand: operand }
end

def plus(operand)
 { operator: '+', operand: operand }
end


p seven(times(five)) # must return 35
p four(plus(nine)) # must return 13
p eight(minus(three)) # must return 5
p six(divided_by(two)) # must return 3
# Requirements:

# There must be a function for each number from 0 ("zero") to 9 ("nine")
# There must be a function for each of the following mathematical operations:
# plus, minus, times, dividedBy (divided_by in Ruby)
# Each calculation consist of exactly one operation and two numbers
# The most outer function represents the left operand, the most inner function
# represents the right operand
