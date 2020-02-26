class Triangle
  
  attr_accessor :x, :y, :z
  
  def initialize (x,y,z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if (@x <= 0) or (@y <= 0) or (@z <= 0)
      raise TriangleError
    elsif (@x + @y <= @z) or (@y + @z <= @x) or (@x + @z <= @y)
      raise TriangleError
    else
      if (@x == @y) && (@y == @z)
        :equilateral
      elsif (@x == @y) or (@y == @z) or (@x == @z)
        :isosceles
      elsif (@x != @y) && (@y != @z) && (@x != @z)
        :scalene
      end
    end
  end
      

  
  class TriangleError < StandardError
    
  end
  
end
