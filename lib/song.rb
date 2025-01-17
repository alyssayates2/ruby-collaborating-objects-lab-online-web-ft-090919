class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def artist_name=(name_string)
      song_artist = Artist.find_or_create_by_name(name_string)
       @artist = song_artist
      @artist.add_song(self)
  end
