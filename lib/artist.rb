class Artist
  @@all = []
  def self.all
    return @@all 
  end
  def initialize(name)
    @name = name 
    @@all << self 
  end
  attr_accessor :name 
  def new_song(name,genre) 
    Song.new(name, self , genre)
  end 
  def songs 
    Song.all.select do |s| 
      s.artist == self 
    end
  end
  def genres 
    Song.all.map do |s|
      s.genre
    end
  end
end