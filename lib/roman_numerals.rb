def numeral_converter(number)
  numeral = ""
  number_holder = number
   ones = 1
   tens = 1
   hundreds = 1
   thousands = 1
  
  if number_holder > 10
    ones = number_holder % 10
    number_holder = number_holder / 10
    tens = number_holder % 10
    number_holder = number_holder / 10
    hundreds = number_holder % 10
    number_holder = number_holder / 10
    thousands = number_holder % 10
  
  else
    ones = number
  end
  
  if ones < 4 
    numeral = "I" * ones
  elsif ones == 4
    numeral = "IV"
  elsif ones == 5
    numeral = "V"
  elsif ones < 9
    numeral = "V"
    while ones > 5
      numeral = numeral + "I"
      ones = ones - 1
    end
  elsif ones == 9
    numeral = "IX"
  end
  
  if number >= 10 && tens < 4
    numeral = ("X" * tens) + numeral
  elsif tens == 4
    numeral = "XL" + numeral
  elsif tens == 5
    numeral = "L" + numeral
  elsif number > 50 && tens < 9
    holder = "L"
    while tens > 5
      holder = holder + "X"
      tens = tens - 1
    end
    numeral = holder + numeral
  elsif tens == 9
    numeral = "XC" + numeral
  end

  if number >= 100 && hundreds < 4
    numeral = ("C" * hundreds) + numeral
  elsif hundreds == 4
    numeral = "CD" + numeral
  elsif hundreds == 5
    numeral = "D" + numeral
  elsif number > 500 && hundreds < 9
    holder = "D"
    while hundreds > 5
      holder = holder + "C"
      hundreds = hundreds - 1
    end
    numeral = holder + numeral
  elsif hundreds == 9
    numeral = "CM" + numeral
  end

  if number >= 1000 && thousands < 4
    numeral = ("M" * thousands) + numeral
  elsif thousands >= 4
    numeral = "Please enter a number under 4000"
  end
  numeral
end

puts numeral_converter(4000)








