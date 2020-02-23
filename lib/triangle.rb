class Triangle

  attr_accessor :sidea, :sideb, :sidec

  def initialize(sidea, sideb, sidec)
    @sidea = sidea
    @sideb = sideb
    @sidec = sidec
  end

  def kind
    illegal_triangle
    if sidea == sideb && sideb == sidec
      :equilateral
    elsif sidea == sideb || sideb == sidec || sidea == sidec
      :isosceles
    else 
      :scalene
    end
  end

  def illegal_triangle
    if sidea <= 0 || sideb <= 0 || sidec <= 0
        begin
            raise TriangleError
        end
    elsif sidea == nil || sideb == nil || sidec == nil
        begin
            raise TriangleError
        end
    elsif sidea + sideb <= sidec || sidea + sidec <= sideb || sidec + sideb <= sidea
        begin
            raise TriangleError
        end
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
