#SOLUTION 3 TEAM_______________________________________________________________________________
require 'coinchanger'

describe 'coinchanger' do
  [200, 100, 50, 20, 10, 5, 2, 1].each do |coin|
    it "returns coin when given coin" do
      expect(coinchanger(coin)).to eq coin
    end

    it "returns 3 equal coins when given money, if divisible by 3" do
      expect(coinchanger(coin * 3)).to eq [coin] * 3
    end
  end

  [200, 20, 2].each do |coin|
    it "returns 2 equal coins when given money, if divisible by 2" do
      expect(coinchanger(coin * 2)).to eq [coin] * 2
    end
  end


  it 'returns 5 x 200 coins if money equals 1000' do
    expect(coinchanger(1000)).to eq [200, 200, 200, 200, 200]
  end

  it "returns an array of coins if divisible by a the 200 coin" do
    arr = (2..50).to_a
    arr.each do |num|
      expect(coinchanger(200 * num)). to eq [200] * num
    end
  end
end
#SOLUTION 2 _______________________________________________________________________________
require 'coinchanger'

describe Change do

  it "returns [1] for 1" do
    expect(subject.change(1)).to eq [1]
  end

  it "returns [2, 2] for 4" do
    expect(subject.change(4)).to eq [2, 2]
  end

  it "returns [5, 1] for 6" do
    expect(subject.change(6)).to eq [5, 1]
  end

  it "returns for 48" do
    expect(subject.change(48)).to eq [20,20,5,2,1]
  end

  it "returns for 142" do
    expect(subject.change(142)).to eq [100,20,20,2]
  end

  it "returns for 286" do
    expect(subject.change(286)).to eq [200,100,50,20,10,5,1]
  end
end


SOLUTON 1----------------------------------------------------------------------------
describe Coinchanger do

  it "returns [1] for 1" do
    expect(subject.change(1)).to eq [1]
  end

  it "returns [2, 2] for 4" do
    expect(subject.change(4)).to eq [2, 2]
  end

  it "returns [2, 2, 2] for 6" do
    expect(subject.change(6)).to eq [2, 2, 2]
  end

  it "returns [25, 10, 10, 1, 1, 1] for 48" do
    expect(subject.change(48)).to eq [25,10,10,1,1,1]
  end

  it "returns [100, 25, 10, 5, 1, 1] for 142" do
    expect(subject.change(142)).to eq [100,25,10,5,1,1]
  end

  it "returns [100,100,50,25,10,5,1] for 291" do
    expect(subject.change(291)).to eq [100,100,50,25,10,5,1]
  end

end


#MY FIRST TEST ----------------------------------------------------------------------------------------


describe 'coinchanger' do
  it "returns '0' when given 0" do
    expect(coinchanger(0)).to eq []
  end

  it "returns '1' when given 1" do
    expect(coinchanger(1)).to eq [1]
  end

  it "returns '2' when given 2" do
    expect(coinchanger(2)).to eq [1, 1]
  end

  it "returns '5' when given 5" do
    expect(coinchanger(5)).to eq [2, 2, 1]
  end

  it "returns '10' when given 10" do
    expect(coinchanger(10)).to eq [2, 2, 2, 2, 2, 2]
  end

  it "returns '20' when given 20" do
    expect(coinchanger(20)).to eq [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
  end

  it "returns '50' when given 50" do
    expect(coinchanger(50)).to eq '50'
  end

  it "returns '100' when given 100" do
    expect(coinchanger(100)).to eq '100'
  end

  it "returns '200' when given 200" do
    expect(coinchanger(200)).to eq '200'
  end

end
