require 'coinchanger'

describe Coinchanger do
  it "expecting target [1] for 1" do
    expect(subject.gave_me_the_change(1)).to eq [1]
  end

  it "expecting target [200] for 200" do
    expect(subject.gave_me_the_change(200)).to eq [200]
  end

  it "expecting target [2,2] for 4" do
    expect(subject.gave_me_the_change(4)).to eq [2,2]
  end

  it "expecting target [200,20,20,5,2,1] for 248" do
    expect(subject.gave_me_the_change(248)).to eq [200,20,20,5,2,1]
  end

  it "expecting target [200,200,200,200,200,5,2,1] for 1008" do
    expect(subject.gave_me_the_change(1008)).to eq [200,200,200,200,200,5,2,1]
  end

#'subject' is a special variable that refers to the object being tested in RSpec. The subject is the object being tested. RSpec has an explicit idea of the subject. It may or may not be defined. If it is, RSpec can call methods on it without referring to it explicitly.

  # it "returns the lowest amount of coin[] eq to the value I ask for, here 218" do
  #   expect(subject.gave_me_the_change(200)).to eq [200]
  #   #expect(subject.gave_me_the_change(amount 218)).to be equal to coins [200, 10, 5, 2, 1]
  #   puts "I have £218 and this is the number and value of coins equivalent [200, 10, 5, 2, 1]"
  # end
end
