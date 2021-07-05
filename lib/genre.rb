class Genre
    attr_accessor :name, :songs
@@all =[]
    def initialize(name)
      @name = name
      @@all <<self
    end


    def self.all
      @@all
    end
  def songs
        Song.all.select do |g| g.genre == self
      end
  end

  def artists
    songs.collect do |a| a.artist
    end
  end

end
