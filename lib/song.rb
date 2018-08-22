require "pry"
require "pry-nav"

class Song
  @@all = []
  
  attr_accessor :name, :artist
  
  def initialize(name, artist = false)
    artist=(artist)
    @name = name 
    save()
  end
  
  def artist=(value)
    if !value
      return
    end

      @artist = value
      @artist.add_song(self)
  end
  

  def self.create(song)
    new_song = Song.new(song)
    new_song.save()
    return new_song
  end
  
  def save()
    @@all << self
  end
  
  def self.all()
    @@all
  end
  
  def self.destroy_all()
    @@all.clear()
  end
end