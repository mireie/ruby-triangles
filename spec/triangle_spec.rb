require 'rspec'
require 'pry'
require 'triangle'

describe "#Triangle" do 
  triangle = Triangle.new(1,2,55)
  it("returns not for non-valid triangle") do
    expect(triangle.type).to(eq('not'))
  end
end 

