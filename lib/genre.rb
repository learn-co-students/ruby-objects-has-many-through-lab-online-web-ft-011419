require "pry"

class Genre 
 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def songs
      Song.all.select {|song| song.genre}
  end 
  
  def self.all
    @@all 
  end 
  
  def artists
   # binding.pry
    songs.collect{|song| song.artist}
  end 
    
end 
    