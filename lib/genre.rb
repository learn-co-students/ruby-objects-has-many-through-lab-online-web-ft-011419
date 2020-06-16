class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre.name == self.name}
  end

  def artists
    genre_artist = []
    Song.all.each do |song|
      if self.name == song.genre.name
        genre_artist << song.artist
      end
    end
    genre_artist
  end

end
