class Genre
  @@all = []
  
  attr_accessor :name, :artists
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre = @name}
  end
  
  def artists
    Song.all.collect {|song| song.artist}
  end
end