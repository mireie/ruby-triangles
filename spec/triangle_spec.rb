require 'rspec'
require 'pry'
require 'triangle'

describe "#Triangle" do 
  triangle = Triangle.new(1,2,55)
  it("returns not for non-valid triangle") do
    expect(triangle.type).to(eq('not'))
  end
  triangle2 = Triangle.new(5,5,5)
  it("returns equilateral for a triangle with equal sides") do
    expect(triangle2.type).to(eq('equilateral'))
  end
  triangle3 = Triangle.new(5,5,8)
  it("returns isosceles for a triangle with exactly 2 equal sides") do
    expect(triangle3.type).to(eq('isosceles'))
  end
  triangle4 = Triangle.new(3,2,4)
  it("returns scalene for triangle with all sides being un-equal") do
    expect(triangle4.type).to(eq('scalene'))
  end
end 

