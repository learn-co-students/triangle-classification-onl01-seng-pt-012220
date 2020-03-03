class Triangle
  
  def initialize(a,b,c)
    @side_a = a 
    @side_b = b 
    @side_c = c 
  end
  
  def kind
    if @side_a <= 0  || @side_b <= 0 || @side_c <= 0
        raise TriangleError
      elsif @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a
        raise TriangleError
      else
        if @side_a == @side_b && @side_a == @side_c
        :equilateral
        elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
        :isosceles
        elsif @side_a != @side_b && @side_b != @side_c && @side_a != @side_c
        :scalene
        end
      end
     end


  
  class TriangleError < StandardError 
    "Triangle Error"
  end
end