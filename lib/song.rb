class Song
  @@all = []
  
  attr_accessor :artist, :name, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  
  
  
  
end