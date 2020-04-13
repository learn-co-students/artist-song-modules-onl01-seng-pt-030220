module Memorable
  module ClassMethods #class methods need to be vague which implies its flexibility to account for all classes.
  
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
