require './lib/caesar_cipher.rb'

describe "#caesar_cipher" do
  it "returns a Caesar cipher of a given word (shifted by 1)" do
    expect(caesar_cipher('abc')).to eql('bcd')
  end
end