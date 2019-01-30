require 'pry'
class Artist
  attr_accessor :name, :genres, :songs, :genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
end

def self.all
  @@all
end

def new_song(name, genre)
  song = Song.new(name, self, genre)
 #creates new song and that song should know that it belongs to an artist
end

def songs#iterates through all songs and finds songs that belong to that artist.
  Song.all.select do |song|
    song.artist == self
  end
end

def genres #an artist has many genres THROUGH its songs
  songs.map do |song|
    song.genre
  end
    #iterates over that artists songs (method) and collects the genre of each song
end

end
