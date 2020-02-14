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

  def new_meal(customer, total , tip )
    Meal.new(customer , self  , total , tip )
  end

  def meals
    Meal.all.select {|m| m if m.waiter ==self }
  end
  def best_tipper
    Meal.all.max {|a,b| a.tip <=> b.tip}
  end 
end
