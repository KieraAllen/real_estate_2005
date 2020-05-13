class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price.gsub("$", '').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    price >= 500000
  end

  def rooms_from_category(type_of_room)
    rooms.find_all do |room|
      room.category == type_of_room
    end
  end
end
