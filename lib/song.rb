class Song
 
 attr_accessor :name, :artist, :genre, :song # concise way
    @@song_count = 0 
 
 def initialize
   @@song_count +=1 
 end
 
  def self.song_count
    @@song_count.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  @@count = []
  
  @@count=0
  
  def self.count
    @@count
  end 

 
  # def initialize(name, artist, genre)
    
  #   @name = name
  #   @artist = artist
  #   @genre = genre
  # end
   
    @@genres = []
    
  def self.count
     @@count += 1
  end
    
  def self.genres
    @@genres.uniq
  end
  
   def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end 
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
  end
    
    genre_count
  
  @@artists = []
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
  
    
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  
end


    