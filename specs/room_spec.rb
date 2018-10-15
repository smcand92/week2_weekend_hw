require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Dancing Queen")
    @song2 = Song.new("Silly Boy")
    @song3 = Song.new("Younger Now")
    @song4 = Song.new("Naturally")
    @song5 = Song.new("Finish Her!")
    @guest1 = Guest.new("Alex")
    @guest2 = Guest.new("Stewart")
    @guest3 = Guest.new("Steven")
    @guest4 = Guest.new("Louise")
    @guest5 = Guest.new("Robbie")
    @room1 = Room.new(1, 3)
    @room2 = Room.new(2, 4)
  end

  def test_create_new_room()
    assert_equal(Room, @room1.class())
  end

  def test_check_in_guest()
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.occupancy.length())
  end

  def test_check_out_guest()
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    assert_equal(2, @room1.occupancy.length())
    @room1.check_out_guest(@guest2)
    assert_equal(1, @room1.occupancy.length())
  end

  def test_song_added_to_room()
    @room1.song_added_to_room(@song4)
    assert_equal(1, @room1.music.length())
  end

  def test_room_capacity
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    assert_equal(3, @room1.occupancy.length())
    # @room1.check_in_guest(@guest4)
    # assert_equal("room is full", @room1.capacity())
  end

end
