require"pry"
class Song
  
  attr_accessor :name, :artist, :genre
  
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_counter = {}
      #binding.pry
    @@genres.each do |genre|
      if genre_counter[genre]
        genre_counter[genre] += 1
      else
        genre_counter[genre] = 1
      end
  end
      genre_counter
  end
end