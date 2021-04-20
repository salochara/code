

def accronym(string)
  accronym = []
  splitted_string = string.split
  splitted_string.each do |word|
    accronym << word[0]
  end
  return accronym.join.upcase
end

p accronym("What the fuck")
