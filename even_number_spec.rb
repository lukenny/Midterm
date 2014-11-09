#Write a passing rspec file called even_number_spec.rb that tests a class called EvenNumber.
#The EvenNumber class should:
#      - Only allow even numbers
#      - Get the next even number
#      - Compare even numbers
#      - Generate a range of even numbers
#http://ruby-doc.org/core-2.1.4/Range.html

require "#{File.dirname(__FILE__)}/even"
require_relative '../spec_helper.rb'
describe EvenNumber do

  it "should only allow even numbers" do
    expect(EvenNumber.new(37)).to be_truthy
  end

  it "should get the next even number" do
    EvenNumber.increment([18]).should eq [20]
  end

end
