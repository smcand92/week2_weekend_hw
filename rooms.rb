
class Room

  attr_reader :number, :occupancy, :music, :capacity

  def initialize(number, capacity)
    @room = number
    @occupancy = []
    @music = []
    @capacity = capacity
  end

  def check_in_guest(name)
    @occupancy << name
  end

  def check_out_guest(name)
    @occupancy.delete(name)
  end

  def song_added_to_room(title)
    @music << title
  end

  def test_room_capacity(guest)
      counter = 0
      if counter <= @capacity
        check_in_guest
        counter + 1 
      elsif counter == @capacity
        p "room is full"
      end
    end




end
