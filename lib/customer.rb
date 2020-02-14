class Customer
  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total , tip )
     Meal.new(self , waiter , total , tip )
  end

  def meals
    Meal.all.select {|m| m if m.customer ==self }
  end

  def waiters
    self.meal.select {|m| m.waiter if m.customer ==self }
  end
end
