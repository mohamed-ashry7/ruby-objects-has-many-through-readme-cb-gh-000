class Waiter

  attr_accessor :name ,:yrs_experience 
  @@all = []
  def initialize(name , years )
    @name = name
    @yrs_experience = years
    @@all << self
  end

  def self.all
    @@all
  end

end
