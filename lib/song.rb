require "pry"
require "pry-nav"

class Song
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist = false, genre = false)
    set_artist(artist)
    @name = name 
    genre=(genre)
  end
  
  def set_artist(value)
    if !value
      return
    end

      @artist = value
      @artist.add_song(self)
  end
  
  def genre=(value)
    if !value
      return
    end
    
    @genre = value
    
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