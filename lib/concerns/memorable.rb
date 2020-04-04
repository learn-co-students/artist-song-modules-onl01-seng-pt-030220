module Memorable
  module ClassMethods
    # def all  #=> why this does not work??
    #   self.all
    # end

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end