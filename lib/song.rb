require "pry"

class Song 
    attr_accessor :name, :artist, :genre

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
        genreArray = []
        @@genres.map do |g|
            unless genreArray.include?(g)
                genreArray << g
            end
        end
        return genreArray
    end

    def self.artists
        artistArray = []
        @@artists.map do |a|
            unless artistArray.include?(a)
                artistArray << a
            end
        end
        return artistArray
    end

    def self.genre_count
        genreCountHash = {}
        @@genres.map do |g|
            unless genreCountHash.include?(g)
                genreCountHash.store(g, 1)
            else
                genreCountHash[g] += 1
            end
        end
        return genreCountHash
    end

    def self.artist_count
        artistCountHash = {}
        @@artists.map do |a|
            unless artistCountHash.include?(a)
                artistCountHash.store(a, 1)
            else 
                artistCountHash[a] += 1
            end
        end
        return artistCountHash
    end

end
