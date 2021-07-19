class Triangle
  attr_reader :id, :side1, :side2, :side3

  @@triangles = {}
  @@total_rows = 0

  def initialize(side1, side2, side3, id)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @id = id || @@total_rows +=1
  end

  def self.all
    @@triangles.values()
  end

  def type
    result = ""
    if (@side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2)
      result = "not"
    elsif (@side1 === @side2 && @side2 === @side3 && @side1 === @side3) 
      result = "equilateral"
    elsif @side1 === @side2 || @side1 === @side3
      result = "isosceles"
    elsif @side1 != @side2 || @side1 != @side3
      result = "scalene"
    else 
      result = "error"
    end

  end

  def save
    @@triangles[self.id] = Triangle.new(self.side1, self.side2, self.side3, self.id)
  end
  def self.clear
    @@triangles = {}
    @@total_rows = 0
  end
end