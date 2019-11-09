class Triangle
  
  attr_reader :side1, :side2, :side3
  
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if self.valid?
    
    elsif side1 == side2 && side1 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else
      
    end
    
  def valid?
    if side1 == 0 || side2 == 0 || side3 == 0
      false
    elsif side1 + side2 < side3 || side2 + side3 < side1 || side1 + side3 < side2
      false
    else
      true
    end
  end
  
  end
  
  
  
  
  
  
  
  
  
end
