require 'pry'
class Artist
  
  attr_accessor :name, :artist, :genres
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self

  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    #binding.pry
    Song.all.collect  {|song| song.genre}
  end
  


  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end
end