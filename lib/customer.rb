class Customer
  attr_accessor :name, :age 

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @meal = [] 
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total , tip )
     meals << Meal.new(self , waiter , total , tip )
    
  end

  def meals 
    @meals 
  end 
  
end
