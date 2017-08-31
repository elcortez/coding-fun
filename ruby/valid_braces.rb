def validBraces(braces)
  stack = []
  symbols = { '{' => '}', '[' => ']', '(' => ')' }
  braces.each_char do |c|
    stack << c if symbols.key?(c)
    return false if symbols.key(c) && symbols.key(c) != stack.pop
  end
  stack.empty?
end

p validBraces( "(){}[]" )#returns true
p validBraces( "(}" ) #returns false
p validBraces( "[(])" ) #returns false
p validBraces( "([{}])" ) #returns true
