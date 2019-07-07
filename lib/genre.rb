class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    #initialized with a name and saved
    #in the @@all array
    @name = name
    @@all << self
  end
  
  def songs
    #iterates through all songs and finds the songs
    #that belong to that genre
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    #iterates over the genre's collection of songs
    #and COLLECTS the artist that owns each song.
    self.songs.collect do |song|
      song.artist
    end
  end
  
  def self.all
    @@all
  end
  
end