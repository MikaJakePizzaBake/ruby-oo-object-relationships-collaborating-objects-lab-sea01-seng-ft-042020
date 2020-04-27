class Artist
  attr_accessor :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
         Song.all.select {|song| song.artist == self}
     end
     def add_song(name)
       name.artist = self
     end
     def self.find_or_create_by_name(name)
       if @@all.find {|artist| artist.name == name}
          @@all.find {|artist| artist.name == name}
      else
        new_artist = Artist.new(name)
      end
    end
    def print_songs
      array = self.songs.map {|song| song.name}
      puts array.join("\n")

    end
  end
