def solution(roman)
  # complete the solution by transforming the roman numeral into an integer
  number = 0
  array = roman.split('')
  array.each_with_index do |x, index|
    if x == "I"
      (array[index + 1] == "V" || array[index + 1] == "X") ? number -= 1 : number += 1
    elsif x == "V"
      number += 5
    elsif x == "X"
      array[index + 1] == ("C") ? number -= 10 : number += 10
    elsif x == "L"
      number += 50
    elsif x == "C"
      array[index + 1] == ("M") ? number -= 100 : number += 100
    elsif x == "D"
      number += 500
    elsif x == "M"
      number += 1000
    end
  end
  number
  # I + 1 or -1 if index +1 == V || X
  # V + 5
  # X + 10 or - 10 if index +1 == C
  # C + 100 or - 100 if index +1 == M
  # M + 1000
  # 1000 = M, 900 = CM, 90 = XC
end

p solution("XXI") #21
p solution("XX") #20
p solution("XIX") #19
p solution("IV") #4
p solution("MDCLXVI") #1666
