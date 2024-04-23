def add(*numbers)
  numbers.map { |num| num.split(',').map(&:to_i).sum }
end