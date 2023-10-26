require './lib/caesar_cipher.rb'

describe "#caesar_cipher" do
  it "returns a Caesar cipher of a given word" do
    expect(caesar_cipher('abc')).to eql('bcd')
  end

  it "returns a case-sensitive Caesar cipher of a given word" do
    expect(caesar_cipher('AbC')).to eql('BcD')
  end

  it "returns a Caesar cipher of a given word based on the shift factor" do
    expect(caesar_cipher('abc', 3)).to eql('def')
  end
end