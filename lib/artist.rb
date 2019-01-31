class Artist 
   
  attr_reader :name, :genre
  
  @@all = []
  
  def initialize(name)
  @@all << self 
  @name = name
  @genres = genre
  @songs = []
  end  
   
  def self.all
    @@all 
  end  
  
  def new_song(name, genre)
    Song.new(name, genre,self)
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