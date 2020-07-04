class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
<<<<<<< HEAD
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
=======
    artist = Artist.new(filename.split(" - ")[0])
#    @artist = artist
    song
#    binding.pry
>>>>>>> 987fb4259eaef812b106fd9199d8ce9df12ae70b
  end
end
