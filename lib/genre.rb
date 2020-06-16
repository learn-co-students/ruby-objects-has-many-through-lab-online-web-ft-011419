class Genre
attr_accessor :name, :artist

@@all = []

  def initialize(name)
  @name = name
  # @songs = []
  # @artists = []
  @@all << self
  end

  def self.all
    @@all
  end

    def songs
      Song.all.select  do |song|
        song.genre == self
      end
    end

    def artists
      self.songs.collect do |song|
        song.artist
      end
    end

  def new_song(name, genre)
    Song.new(name, artist, self)

  end

end
