class Triangle
  # write code here
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    if a <= 0 || b <= 0 || c <= 0 
      raise TriangleError
    @a = a 
    @b = b 
    @c = c 
  end 
  
  def kind 
    if @a == @b && @a == @c 
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c 
      return :isosceles 
    else @a != @b && @a != @c && @b == @c 
      return :scalene 
    end 
  end
  
  class TriangleError < StandardError 
  end 
  
end
