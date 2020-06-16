require 'pry'
class Artist
  attr_accessor :name, :genre

@@all = []


  def initialize(name)
    @name = name
    # @genres = []
    # @songs = []
    @@all << self
  end

  def self.all
  @@all
  end

  def songs
    Song.all.select  do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.collect do |song|
      song.genre
    # Song.all.each do |song|
    #   song.genre == self.genre
      # @genres
      # binding.pry
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # @genres << genre
    # @songs << song
  end
end
