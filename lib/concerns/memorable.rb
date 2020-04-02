module Memorable
   module ClassMethods
     @@all =[]

     def reset_all
       self.all.clear
     end

     def count
       self.all.count
     end
  end

  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
    def initialize
      self.class.all << self
    end
  end

end
