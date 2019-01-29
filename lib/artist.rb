require "pry"

class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    genres = []
    Song.all.select do |song|
      if self.name == song.artist.name
        genres << song.genre
      end
    end
    genres
  end

end
