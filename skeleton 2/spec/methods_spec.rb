require 'methods'
require 'rspec'

describe "my_uniq" do 
  subject(:result) {my_uniq([1,1,2,2,3,3])}
  it "returns an array" do 
    expect(result.is_a?(Array)).to eq(true)
  end
  
  it "returns a unique array" do 
    expect(result).to eq([1,2,3])
  end
end

describe "two_sum" do
  it "returns an empty array if no elements add to zero" do
    expect([1,2,3].two_sum).to be_empty
  end
  
  it "returns an array of ordered indices" do 
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
  
end

describe "transpose" do 
  subject(:array) {[[0, 1, 2], [3, 4, 5],[6, 7, 8]]}
  let(:el) {[[0, 3, 6], [1, 4, 7], [2, 5, 8]]}
  
  it "returns an array of equal dimensions to input" do 
    expect(array.transpose.length).to eq(array.length)
    expect(array.transpose.all? {|row| row.length == array[0].length}).to eq(true)
  end 
  
  it "properly transposes all elements" do 
    expect(array.transpose).to eq(el)
  end
end

describe "stock_picker" do
  subject(:stocks) {[3,2,5,0,7]}
  it "returns an array of 2 values" do
    expect(stock_picker(stocks).length).to eq(2)
  end
  it "returns stock pairs with ascending values" do
    expect(stock_picker(stocks)).to eq([3,4])  
  end
  it "doesn't sell stocks before buying them" do
    expect(stock_picker([10,0,3])).to eq([1,2])
  end
end



