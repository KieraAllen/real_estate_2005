require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def test_it_exists
    room = Room.new(:bedroom, 10, '13')
    assert_instance_of Room, room
  end

  def test_it_has_a_category
    skip
    room = Room.new(:bedroom, 10, '13')
    assert_equal :bedroom, room.category
  end

  def test_it_can_get_area
    skip
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:living_room, 15, '12')
    assert_equal 130, room1.area
    assert_equal 180, room2.area
  end
end



# pry(main)> room = Room.new(:bedroom, 10, "13")
# #=> #<Room:0x00007fa53b9ca0a8 @category=:bedroom, @length=10, @width="13">
#
# pry(main)> room.category
# #=> :bedroom
#
# pry(main)> room.area
# #=> 130
#
# pry(main)> room.is_painted?
# #=> false
#
# pry(main)> room.paint
#
# pry(main)> room.is_painted?
# #=> true
