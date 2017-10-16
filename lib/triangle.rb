class Triangle

  attr_accessor :equilateral, :isosceles, :scalene, :x, :y, :z

  def initialize(x, y, z)
    if x >= (y + z) || y >= (x + z) || z >= (x + y)
      raise TriangleError
    end

    if x <= 0 || y <= 0 || z <= 0
      raise TriangleError
    end

    if x == nil || y == nil || z == nil
      raise TriangleError
    end

    @x = x
    @y = y
    @z = z
  end

  def kind
    if x == y && x == z
      return :equilateral
    elsif x == y || y == z || z == x
      return :isosceles
    else
      return :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "This is not a valid triangle."
  end
end
