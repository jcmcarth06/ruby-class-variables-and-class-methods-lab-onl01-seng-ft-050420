class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_hash = Hash.new(0)
    @@genres.each do |genre|
      genres_hash[genre] += 1
    end
  end
end
