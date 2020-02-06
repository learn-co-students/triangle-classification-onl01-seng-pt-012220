class Triangle
  # write code here
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def not_triangle
    if ((@length_1 + @length_2)<= @length_3) or ((@length_1 + @length_3) <= @length_2) or ((@length_2 + @length_3) <= @length_1)
      false
    elsif ((@length_1 == 0) or (@length_2 ==0) or (@length_3 ==0))
      false
    elsif ((@length_1 == 0) or (@length_2 == 0) or (@length_3 == 0))
      false
    else 
      true
    end
  end

  def kind 
    if not_triangle == false
      raise TriangleError
    else
      if @length_1 == @length_2 && @length_1 == @length_3
        :equilateral
      elsif (@length_1 == @length_2 && @length_1 != @length_3) or (@length_3 == @length_2 && @length_3 != @length_1) or (@length_1 == @length_3 && @length_1 != @length_2)
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
end
