def solution(str)
  str.length % 2 == 0 ? str : str << "_"
  str.scan(/../)
end

p solution("abc") #['ab', 'c_']
p solution('abcdef') #['ab', 'cd', 'ef']
