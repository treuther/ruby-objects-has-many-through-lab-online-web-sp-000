class Artist
  
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    #creates a new song
   Song.new(name, self, genre)
  end
  
  def songs
    #iterates through all songs and finds the songs
    #that belong to that artist (select method)
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    #iterates over that artist's songs and COLLECTS
    #the genre of each song
    self.songs.collect do |song|
      song.genre
    end
  end
  
  def self.all
    @@all
  end
  
end