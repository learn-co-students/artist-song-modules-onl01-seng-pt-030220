require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

require 'pry'

class Song
  extend Memorable::ClassMethods
  include Paramable
  extend Findable
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
