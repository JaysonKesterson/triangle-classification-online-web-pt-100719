class Triangle
  
  attr_reader :side1, :side2, :side3
  
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if self.invalid?
      #begin
      raise TriangleError 
     # rescue TriangleError => error
       # puts error.message
      #end
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end
  
    class TriangleError < StandardError
      #def message
       # "This is not a valid triangle."
     # end
    end
  
  
    
  def invalid?
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      true
    elsif @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2
      true
    else
      false
    end
  end
  
end
