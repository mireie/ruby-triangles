class Triangle
  attr_reader :side1, :side2, :side3

  @@triangles = {}
  @@total_rows = 0

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def self.all
    @@triangles.values()
  end

  def type
    result = nil
    if (side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2)
      result = "not"
    elsif (side1 === side2 && side2 === side3 && side1 === side3) 
      result = "equilateral"
    elsif side1 === side2 || side1 === side3
      result = "isosceles"
    elsif side1 != side2 || side1 != side3
      result = "scalene"
    else 
      result = "error"
    end

  end

end
