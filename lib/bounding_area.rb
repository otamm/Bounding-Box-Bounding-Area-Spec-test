class BoundingArea
  def initialize(boxes)
    @boxes = boxes
  end

  def contains_point?(x,y)
    @boxes.each do |a|
      if a.contains_point?(x,y)
        return true
        break
      end
    end
    return false
  end
end
