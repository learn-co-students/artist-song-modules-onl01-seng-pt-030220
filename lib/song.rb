require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
require 'pry'

class Song
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  
  @@songs = []
    
  def self.all
    @@songs
  end
  
  attr_accessor :name
  attr_reader :artist

  def artist=(artist)
    @artist = artist
  end

end
