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
      Song.all.select do |song|
        song.genre == self
      end
    end

  def artists# genre has many artists through its songs
    songs.map do |song|
      song.artist
      end
    end
  end
