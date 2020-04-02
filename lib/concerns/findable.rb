module Findable

  def find_by_name(name)
     self.artists.detect{|a| a.name == name}
  end
  def all
    self.artists
  end

end
