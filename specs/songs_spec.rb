require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Dancing Queen")
  end

  def test_create_new_song()
    assert_equal(Song, @song1.class())
  end


end
