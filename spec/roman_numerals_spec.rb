require ('rspec')
require ('roman_numerals')

describe('numeral_converter') do
  it('will return "I" for 1') do
    numeral_converter(1).should(eq("I"))
  end
  it('will return "IV" for 4') do
    numeral_converter(4).should(eq("IV"))
  end
  it('will return "V" for 5') do
    numeral_converter(5).should(eq("V"))
  end
  it('will return "VI" for 6') do
    numeral_converter(6).should(eq("VI"))
  end
  it('will return "IX" for 9') do
    numeral_converter(9).should(eq("IX"))
  end
  it('will return "X" for 10') do
    numeral_converter(10).should(eq("X"))
  end
  it('will return "XI" for 11') do
    numeral_converter(11).should(eq("XI"))
  end
  it('will return "XX" for 20') do
    numeral_converter(20).should(eq("XX"))
  end
  it('will return "XLI" for 41') do
    numeral_converter(41).should(eq("XLI"))
  end
  it('will return "LXV" for 65') do
    numeral_converter(65).should(eq("LXV"))
  end
  it('will return "XCIX" for 99') do
    numeral_converter(99).should(eq("XCIX"))
  end
  it('will return "DCLXXXIX" for 689') do
    numeral_converter(689).should(eq("DCLXXXIX"))
  end
  it('will return"CMXCIX" for 999') do
    numeral_converter(999).should(eq("CMXCIX"))
  end
  it('will return "MMCCCLXVII" for 2367') do
    numeral_converter(2367).should(eq("MMCCCLXVII"))
  end
  it('will return "MMMCMXCIX" for 3999') do
    numeral_converter(3999).should(eq("MMMCMXCIX"))
  end
  it('will return an error message for numbers over 4000') do
    numeral_converter(4000).should(eq("Please enter a number under 4000"))
  end
end
