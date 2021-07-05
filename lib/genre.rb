require 'pry'
class Genre
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| self == song.genre}
  end

  def artists
    songs.collect {|song| song.artist}
  end

end
