require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  # Gives an array of file names fomrated "Artist - Title - genre.mp3"
  def files
    Dir["#{@path}/*.mp3"].collect {|path| path.split('/')[-1]}
  end

  def import
    self.files.each do |file_edit| # this is my edited file name
      new_song_instance = Song.new_by_filename(file_edit)
      new_song_instance #this is now a Song Instance

    end
  end

end
