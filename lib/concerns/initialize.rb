module Initialize 
  module InstanceMethods
    
    def initialize 
      self.class.all << self
    end
    
  end 
end 