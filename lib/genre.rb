class Genre 
  @@all = []
  def self.all 
    @@all 
  end 
  def initialize(name)
    @name = name
    @@all << self 
  end 
  attr_accessor :name 
  def songs
    Song.all.select { |s| s.genre == self}
  end 
  def artists 
   Song.all.map do |s|
     s.artist
   end
 end
end