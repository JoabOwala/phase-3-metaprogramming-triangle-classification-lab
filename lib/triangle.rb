class Triangle
  # write code here
  attr_accessor :length, :width, :hypotenuse
  def initialize(length = 0, width = 0, hypotenuse = 0)
    @length = length
    @width = width
    @hypotenuse = hypotenuse
    
  end

  def kind
    if length <= 0 || width <= 0 || hypotenuse <= 0
      raise TriangleError, "Each side must be larger than 0"
    elsif length + width <= hypotenuse || width + hypotenuse <= length || length + hypotenuse <= width
      raise TriangleError, "Triangle inequality violated"
    elsif length == width && width == hypotenuse
      :equilateral
    elsif length == width || width == hypotenuse || length == hypotenuse
      :isosceles
    else 
      :scalene
    end
  end

  class TriangleError < StandardError
  end
  
end
