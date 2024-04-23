def add(*numbers)
  numbers.map do |num|
    delimiter = ','
    if num.start_with?("//")
      delimiter = num[2]
      num = num[num.index("\n")+1..-1]
    end
    raise "Invalid input" if num.end_with?(',') || num.end_with?("\n")
    num.split(/[\n#{delimiter}]/).map(&:to_i).sum
  end
end
