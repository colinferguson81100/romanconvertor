def fromRoman(romanNumber)
  total = 0
  tally = 0
  number = romanNumber.split("")
    romanNumber.each_char do |chr|
      tally +=1
      if chr == "I"
        if number[tally] == "V" or number[tally] == "X"
          total -=1
        else
          total += 1
        end
      elsif chr == "V"
        total += 5
      elsif chr == "X"
        if number[tally] == "C" or number[tally] == "L"
          total -=10
        else
          total += 10
        end
      elsif chr == "L"
        total += 50
      elsif chr == "C"
        if number[tally] == "M" or number[tally] == "D"
          total -=100
        else
          total += 100
        end
      elsif chr == "D"
        total += 500
      elsif chr == "M"
        total += 1000
      else
        raise TypeError
      end
    end
    #print total
    return total
end

def toRoman(arabicNumber)
  total = ""
  range = (1..3999)
  if range.include?(arabicNumber) == false
    raise RangeError
  end

  while arabicNumber > 0
    if arabicNumber>= 1000
      total += "M"
      arabicNumber -=1000
    elsif arabicNumber>= 900
      total += "CM"
      arabicNumber -= 900
    elsif arabicNumber>= 500
      total += "D"
      arabicNumber -=500
    elsif arabicNumber>= 400
      total += "CD"
      arabicNumber -=400
    elsif arabicNumber>= 100
      total += "C"
      arabicNumber -=100
    elsif arabicNumber>=90
      total += "XC"
      arabicNumber -=90
    elsif arabicNumber>=50
      total += "L"
      arabicNumber -=50
    elsif arabicNumber>= 40
      total += "XL"
      arabicNumber -=40
    elsif arabicNumber>= 10
      total += "X"
      arabicNumber -=10
    elsif arabicNumber>= 9
      total += "IX"
      arabicNumber -=9
    elsif arabicNumber>= 5
      total += "V"
      arabicNumber -=5
    elsif arabicNumber>= 4
      total += "IV"
      arabicNumber -=4
    elsif arabicNumber>= 1
      total += "I"
      arabicNumber -=1
    end
  end
  #print total
  return total
end
