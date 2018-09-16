require("minitest/autorun")
require("minitest/rg")
require_relative("../song")
require_relative("../room")

class SongTest < Minitest::Test

  def setup
    @song = Song.new("Oasis", "Wonderwall")
  end

  def test_get_artist_name
    assert_equal("Oasis", @song.artist)
  end

  def test_get_song_title
    assert_equal("Wonderwall", @song.title)
  end


end
