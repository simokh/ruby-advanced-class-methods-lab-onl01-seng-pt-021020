class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    song_name= self.all.find {|song| song.name == name}
    song_name
  end

  def self.find_or_create_by_name(name)
    song_name = self.find_by_name(name)
    if song_name
        song_name
    else song_name = self.create_by_name(name)
    end
  end

  def self.alphabetical
    alphabetical_sort = self.all.sort_by {|song| song.name}
    alphabetical_sort
  end

  def self.new_from_filename(name)
    arr = name.split(" - ")
    arr[1] = arr[1].chomp(".mp3")
    song = self.new
    song.name = arr[1]
    song.artist_name = arr[0]
    song
  end

  def self.create_from_filename(name)
    new_song_name = self.new_from_filename(name)
      song = self.create
      song.name = new_song_name.name
      song.artist_name = new_song_name.artist_name
      song
  end

  def self.destroy_all
    self.all.clear
  end

end
