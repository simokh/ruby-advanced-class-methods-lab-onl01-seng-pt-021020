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
    self.create 

  end

  def self.find_by_name

  end


  def self.find_or_create_by_name

  end


  def alphabetical

  end

  def new_from_filename

  end

  def destroy_all

  end





end
