require 'pry'

class Triangle
  
  def initialize(side_1, side_2, side_3)
    @sides = []
    @sides << side_1
    @sides << side_2
    @sides << side_3
  end

  def triangle?
    sum_1 = @sides[0] + @sides[1]
    sum_2 = @sides[1] + @sides[2]
    sum_3 = @sides[0] + @sides[2]
    if @sides.none?{|side| side <= 0} && sum_1 > @sides[2] && sum_2 > @sides[0] && sum_3 > @sides[1]
      true
    else
      false
    end
  end
  
  def kind
    if triangle?
      if @sides.uniq.length == 1
        :equilateral
      elsif @sides.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end
end
