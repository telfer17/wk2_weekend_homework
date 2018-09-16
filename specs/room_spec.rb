require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < Minitest::Test

  def setup
    @guest1 = Guest.new("John", 30)
    @guest2 = Guest.new("David", 15)
    @guest3 = Guest.new("Bob", 10)

    @guests = [@guest1, @guest2, @guest3]

    @song1 = Song.new("Oasis", "Wonderwall")
    @song2 = Song.new("Oasis", "Live Forever")

    @songs = [@song1, @song2]

    @room1 = Room.new("Upstairs", 5, @guests, @songs)
    @room2 = Room.new("Downstairs", 3, @guests, @songs)
  end

  def test_room_name
    assert_equal("Upstairs", @room1.name)
  end

  def test_room_capacity
    assert_equal(5, @room1.capacity)
  end

  def test_current_guests
    assert_equal(3, @room1.current_guests)
  end

  def test_add_guest_to_room
    guest = Guest.new("Jack", 12)
    @room1.add_guest(guest)
    assert_equal(4, @room1.current_guests())
  end

  def test_remove_guest_from_room
    removed_guest = @room1.remove_guest()
    assert_equal(2, @room1.current_guests())
    assert_equal("Bob", removed_guest.name)
  end

  def test_current_playlist
    assert_equal(2, @room2.current_playlist)
  end

  def test_add_song_to_room
    song = Song.new("Lucky Man", "The Verve")
    @room2.add_song_to_room(song)
    assert_equal(3, @room2.current_playlist())

    # adding multiple songs to a different room
    song = Song.new("Thriller", "Michael Jackson")
    song = Song.new("Fire Starter", "The Prodigy")
    @room1.add_song_to_room(song)
    assert_equal(4, @room1.current_playlist())
  end

  # def test_too_many_guests_in_room
  #   guest = Guest.new("Paul", 40)
  #   @room2.add_guest(guest)
  #   assert_equal(3, @room2.current_guests())
  # end

end
