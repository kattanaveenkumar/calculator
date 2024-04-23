require_relative '../calculator' # Assuming the method is defined in a separate file named add_method.rb

RSpec.describe "#add" do
  it "returns [0] when input is an empty string" do
    expect(add("")).to eq([0])
  end

  it "returns [1] when input is '1'" do
    expect(add("1")).to eq([1])
  end

  it "returns [6] when input is '1,5'" do
    expect(add("1,5")).to eq([6])
  end

  it "returns [5, 4] when input is '2,3' and '4'" do
    expect(add("2,3", "4")).to eq([5, 4])
  end
end
