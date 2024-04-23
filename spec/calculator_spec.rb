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
    expect(add("", "1", "1,5")).to eq([0, 1, 6])
  end

  it "returns 6 for input '1\n2,3'" do
    expect(add("1\n2,3")).to eq([6])
  end

  it "raises an error for input '1,\n'" do
    expect { add("1,\n") }.to raise_error("Invalid input")
  end

  it "returns 6 for input '1\n2,3'" do
    expect(add("1\n2,3")).to eq([6])
  end

  it "returns 3 for input '//;\n1;2'" do
    expect(add("//;\n1;2")).to eq([3])
  end

  it "raises an error for input '1,\n'" do
    expect { add("1,\n") }.to raise_error("Invalid input")
  end

  it "raises an error for input '-1,2,-3'" do
    expect { add("-1,2,-3") }.to raise_error("Negative numbers not allowed: -1,-3")
  end
end
