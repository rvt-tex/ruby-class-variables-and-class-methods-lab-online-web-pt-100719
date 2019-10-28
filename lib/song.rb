class Song
  attr_accessor :name, :artist, :genre 
    @@count = 0 
    @@artist = []
    @@genre = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1 
    @@artist << artist
    @@genre << genre
  end 

  def self.count
    @@count 
  end 
  
  def self.artist
    @@artist.uniq
  end
  
  def self.genre
    @@genre.uniq
  end 

  def self.artist_count
   artist_count = {}
 @@artist.each{ |artist|
    if artist_count[artist]
      artist_count[artist] += 1
   else
     artist_count[artist] = 1
   end
  }
  artist_count
 end

  def self.genre_count
   genre_count = {}
 @@genre.each{ |genre|
    if genre_count[genre]
     genre_count[genre] += 1
   else
     genre_count[genre] = 1
   end
  }
  genre_count
 end
  
end 
  
  
  