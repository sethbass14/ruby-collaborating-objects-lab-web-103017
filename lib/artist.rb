class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    # if @all.include?(self)
    @@all << self
  end

  def self.all
    @@all
  end

  # call this in the gons method
  def self.find_or_create_by_name(artist_str)
    if @@all.find {|artist_instance| artist_instance.name == artist_str}
      @@all.find {|artist_instance| artist_instance.name == artist_str}
    else
      new_artist = Artist.new(artist_str)
      new_artist.save
      new_artist
    end


  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
