class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name,artist,genre)
        @@count+=1
        @name = name
        @artist = artist
        @@artists << @artist
        @genre = genre
        @@genres << @genre
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.tally.keys
    end
    def self.artists
        @@artists.tally.keys
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end 