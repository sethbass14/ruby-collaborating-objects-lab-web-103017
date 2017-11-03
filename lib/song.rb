require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file)
    #This self will take
    array = file.split(" - ")
    title_name = array[1]
    artist_name = array[0]
    artist_instance = Artist.find_or_create_by_name(artist_name)
    song = Song.new(title_name)
    song.artist = artist_instance
    artist_instance.add_song(song)
    # binding.pry
    return song





  end
end
