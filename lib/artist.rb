require "pry"

class Artist 
  attr_accessor :name, :song 
  attr_writer :genre 
  
 @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
    @artist = self
    @genre = Genre
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
   song = Song.new(name)
   genre = Genre.new(genre)
   @artist.song = song
   @artist.genre = genre
  #  binding.pry
    
  end 
  
  def songs 
    @songs 
  end 
end 