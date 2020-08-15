class Triangle

  attr_accessor :a, :b, :c 

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 

  def kind 
    valid_triangle

      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
  end

  def valid_triangle
    triangle = [ (a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].map do |side|
        triangle << false if side <= 0
        if triangle.include?(false)
        raise TriangleError
        end 
      end 
  end

    class TriangleError < StandardError
    end 

end
