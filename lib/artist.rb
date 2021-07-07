require "pry"

class Artist 
  attr_accessor :name
  
 @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
   
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
   song = Song.new(name, self, genre)
  
  
  #  binding.pry
    
  end 
  
  def songs 
   # binding.pry
    Song.all.select {|song| song.artist == self}
    # Select all of this artists songs from Song.all
  end 
  
  def genres
    songs.collect {|song| 
       song.genre
     }
     
    #binding.pry 
    
  end 
end 