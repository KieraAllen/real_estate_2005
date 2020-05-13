class Room

  def initialize(category, length, width)
    @category = category
    @length = 10
    @width = width
  end

  def area
    @length * @width
  end
end
