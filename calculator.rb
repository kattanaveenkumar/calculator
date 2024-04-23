def add(*numbers)
  sums = []
  numbers.each do |num|
    sum = num.split(',').map(&:to_i).sum
    sums << sum
  end
  sums
end