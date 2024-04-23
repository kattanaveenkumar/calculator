def add(*numbers)
  numbers.map do |num|
    raise "Invalid input" if num.end_with?(',') || num.end_with?("\n")
    num.split(/[\n,]/).map(&:to_i).sum
  end
end
