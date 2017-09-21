class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
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
    hash = {}
    @@genres.each do |genre|
      hash[genre] +=1 if hash[genre]
      hash[genre] = 1 if !hash[genre]
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      hash[artist] +=1 if hash[artist]
      hash[artist] = 1 if !hash[artist]
    end
    hash
  end
end
