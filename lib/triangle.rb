class Triangle
  
  attr_accessor :sidea, :sideb, :sidec

  def initialize(sidea, sideb, sidec)
    @sidea = sidea
    @sideb = sideb
    @sidec = sidec
  end

  def triangle1 
    sidea.positive? && sideb.positive? && sidec.positive?
  end 
  
  def triangle2 
    sidea + sideb > sidec && sidea + sidec > sideb && sideb + sidec > sidea
  end 

  def kind
    if triangle1 == true && triangle2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if sidea == sideb && sideb == sidec && sidea == sidec
      :equilateral
    elsif sidea != sideb && sideb != sidec && sidec != sidea
      :scalene 
    else 
      :isosceles
    end 
  end

  class TriangleError < StandardError
    
  end
end