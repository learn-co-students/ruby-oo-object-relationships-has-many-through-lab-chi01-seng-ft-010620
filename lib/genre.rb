require_relative "artist"
require_relative "song"
class Genre
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|n| n.genre == self}
    end

    def artists
        Song.all.select{|n| n.genre == self}.map{|n| n.artist}
    end
    

end
