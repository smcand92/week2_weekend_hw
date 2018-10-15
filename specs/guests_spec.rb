require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("John")
  end

  def test_create_new_guest()
    assert_equal(Guest, @guest1.class())
  end

  def test_guest_has_name()
    assert_equal("John", @guest1.name)
  end
end
