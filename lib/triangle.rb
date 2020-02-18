require "pry"
class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three, :sides
  def initialize(side_one, side_two, side_three)
    @sides = []
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @sides = [side_one, side_two, side_three]
    #binding.pry
    kind
  end

  def kind
    if @sides.include?(0)
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #  puts error.message_zero
      #end
    elsif @sides.bsearch{|i| i < 0}
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #  puts error.message_negative_number
      #end
    elsif (@side_one + @side_two <= @side_three) || (@side_one + @side_three <= @side_two) || (@side_two + @side_three <= @side_one)
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #  puts error.breaks_lessthan_equal_to_law
      #end
    else
      if @side_one == @side_two && @side_one == @side_three
        :equilateral
      elsif (@side_one == @side_two && @side_one != @side_three) || (@side_one == @side_three && @side_one != @side_two) || (@side_two == @side_three && @side_two != @side_one)
        :isosceles
      else
        :scalene
      end
    end


  end

  class TriangleError < StandardError
    def message_zero
      "Tiangles cannot have a 0 length side."
    end
    def message_negative_number
      "Triangles cannot have negative nubers for a length."
    end
    def breaks_lessthan_equal_to_law
      "Triangles have two sides that add up to be greater than the third always."
    end
  end
end
