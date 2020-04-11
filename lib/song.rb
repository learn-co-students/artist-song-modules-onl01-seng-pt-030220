require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  
  # @@songs = []

  # def initialize
  #   @@songs << self
  # end

  # # def self.find_by_name(name)
  # #   @@songs.detect{|a| a.name == name}
  # # end

  # def self.all
  #   @@songs
  # end

  # def artist=(artist)
  #   @artist = artist
  # end

  # # def to_param
  # #   name.downcase.gsub(' ', '-')
  # # end
end
