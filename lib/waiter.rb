class Waiter

  attr_accessor :name ,:yrs_experience
  @@all = []
  def initialize(name , years )
    @name = name
    @yrs_experience = years
    @meals = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total , tip )
     meals << Meal.new(customer , self  , total , tip )
  end

  def meals
    @meals
  end
end
