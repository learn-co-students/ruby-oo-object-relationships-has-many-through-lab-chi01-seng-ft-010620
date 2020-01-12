class Artist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def songs
        Song.all.select { |songs| songs.artist == self }
    end 

    def new_song(song_name, genre)
        Song.new(song_name, self, genre)
    end 

    def genres
        songs.map {|my_songs| my_songs.genre}
    end 

   


end 