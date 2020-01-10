require_relative 'song'
require_relative 'genre'
class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name,genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select{|n| n.artist == self}
    end

    def genres
        Song.all.select{|n| n.artist == self}.map{|n| n.genre}
    end

end