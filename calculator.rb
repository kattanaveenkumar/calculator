def add(*numbers)
  numbers.map do |num|
    delimiter = num.start_with?("//") ? num[2] : ','
    nums = num.start_with?("//") ? num[num.index("\n")+1..-1] : num
    raise "Invalid input" if nums.end_with?(',') || nums.end_with?("\n")
    nums.split(/[\n#{delimiter}]/).map(&:to_i).sum
  end
end
