class HelperMethods 
  @@all = []

  def self.all 
    @@all
  end

  def initialize(attr = {}) 
    attr.each do |key, value|
      self.send("#{key}=", value) 
    end
    @@all << self
  end
end