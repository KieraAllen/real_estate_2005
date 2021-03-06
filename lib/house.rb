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

  def area
    house_area = 0
    rooms.each do |room|
       house_area += room.area
    end
    house_area
  end

  def details
    details = {}
    details["price"] = price
    details["address"] = address
    details
  end

  def price_per_square_foot
    (@price.to_f / self.area).round(2)
  end

  def rooms_sorted_by_area
    rooms.sort_by { |room| room.area }.reverse
  end

  def rooms_by_category
    sort_them_rooms = {}
    sort_them_rooms[:bedroom] =
    sort_them_rooms[:living_room] =
    sort_them_rooms[:basement] = 
    rooms.sort_by { |room| room.category }
    sort_them_rooms
  end
end
