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
  
  
  def self.artist_count
    artist_counter = {}
      #binding.pry
    @@artists.each do |artist|
      if artist_counter[artist]
        artist_counter[artist] += 1
      else
        artist_counter[artistartist] = 1
      end
  end
      artist_counter
  end
  
end