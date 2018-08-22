class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def self.create(genre)
    new_genre = Genre.new(genre)
    new_genre.save()
    return new_genre
  end
  
  def save()
    @@all << self
  end
  
  def add_song(song)
    if song.genre == nil
      song.genre = self
    end
    
    genre.songs << self unless genre.songs.include?(self)
    
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