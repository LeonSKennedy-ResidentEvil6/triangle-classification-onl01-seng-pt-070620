require 'pry'
class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    elsif @a !== @b || @b != @c || @c != @a
      :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
#    def message
#      "invalid triangle"
  end

end




# And we might need <= to check not simply if they are equal but if the are less than the third sides length as well

# And to finish that off, we need to check all combinations, not just a + b
