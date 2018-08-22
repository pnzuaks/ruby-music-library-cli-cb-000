require "pry"
require "pry-nav"

class Song
  @@all = []
  
  attr_accessor :name, :artist
  
  def initialize(name, artist = false)
    set_artist(artist)
    @name = name 
  end
  
  def set_artist(value)
    if value != false
      @artist = value
      @artist.add_song(self)
    end
   
  end
  
  # if !value
  #     return
  #   end
    
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