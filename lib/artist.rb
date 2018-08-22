class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def self.create(artist)
    new_artist = Artist.new(artist)
    new_artist.save()
    return new_artist
  end
  
  def save()
    @@all << self
  end
  
  def add_song(song)
    if song.artist == nil
      song.artist = self
    end
    
    if !@songs.include?(song)
    @songs << song
    end
  end
  
  def songs()
    @songs
  end
  
  def self.all()
    @@all
  end
  
  def self.destroy_all()
    @@all.clear()
  end
end