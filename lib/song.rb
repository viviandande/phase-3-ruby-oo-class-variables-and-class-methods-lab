class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist

    end

    def name
        @name
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
        count = Hash.new(0)
        @@genres.each { |g| count[g] += 1 }
        count
    end

    def self.artist_count
        count = Hash.new(0)
        @@artists.each { |artist| count[artist] += 1 }
        count
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems.name
ninety_nine_problems.artist
ninety_nine_problems.genre