require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
require 'pry'

class Artist
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  
  @@artists = []
  
  def self.all 
    @@artists
  end 
  
  
  attr_accessor :name
  attr_reader :songs
    
  def initialize
    super
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
