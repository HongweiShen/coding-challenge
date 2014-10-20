require './prime_multiplication_table'

describe PrimeMultiplicationTable do
  it "works when prime_count is 0" do
    table = PrimeMultiplicationTable.new(0)
    expect( table.line(0) ).to eq([nil])
  end

  it "works when prime_count is 1" do
    table = PrimeMultiplicationTable.new(1)
    expect( table.line(0) ).to eq([nil, 2])
    expect( table.line(1) ).to eq([2, 4])
    expect( table.line(2) ).to eq(nil)
  end

  it "works when prime_count is 3" do
    table = PrimeMultiplicationTable.new(3)
    expect( table.line(0) ).to eq([nil, 2, 3, 5])
    expect( table.line(1) ).to eq([2, 4, 6, 10])
    expect( table.line(2) ).to eq([3, 6, 9, 15])
    expect( table.line(3) ).to eq([5, 10, 15, 25])
  end
end
