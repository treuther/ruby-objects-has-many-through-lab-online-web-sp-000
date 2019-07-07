class Song
  
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize(name, artist, genre)
    #should be initialized with a name, artist and genre
    #and be saved in the @@all array
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end