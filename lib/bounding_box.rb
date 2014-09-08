class BoundingBox
  attr_reader :left,:width,:right,:bottom,:height,:top
  def initialize(left,bottom,width,height)
    @left = left
    @width = width
    @right = width + left
    @bottom = bottom
    @height = height
    @top = bottom + height
  end

  def contains_point?(x,y)
    if x >= @left && x <= @right && y >= @bottom && y <= @top
      return true
    else
      return false
    end
  end
end

