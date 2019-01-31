class Artist 
   
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
  @@all << self 
  @name = name
  end  
   
  def self.all
    @@all 
  end  
  
  def new_song(name, genre)
    Song.new(name,self,genre)
  end  
   
  def songs(song) 
    Song.all.select {|song| song.artist == self}
  end  
   
  def genres 
    songs.map do |song|
      song.genre 
    end
  end  
   
   
   
   
   
end  