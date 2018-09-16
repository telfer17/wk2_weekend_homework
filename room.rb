class Room

  attr_accessor :name, :capacity, :playlist

  def initialize(name, capacity, current_guests, playlist)
    @name = name
    @capacity = capacity
    @current_guests = current_guests
    @playlist = playlist
  end

  def current_guests
    return @current_guests.length
  end

  def add_guest(guest)
    @current_guests.push(guest)
  end

  def remove_guest()
    @current_guests.pop()
  end

  def current_playlist
    return @playlist.length
  end

  def add_song_to_room(song)
    @playlist.push(song)
  end

  # def too_many_guests(guest)
  #   if @current_guests > @capacity
  #     @current_guests.pop()
  #   else
  #     return @current_guests
  #   end
  # end


end
