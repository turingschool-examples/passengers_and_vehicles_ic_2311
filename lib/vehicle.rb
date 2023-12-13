class Vehicle
  attr_reader :year, :make, :model

  def initialize(year, make, model)
    @year = year
    @make = make 
    @model = model 
    @passengers = []
  end

  # def speeding?
  #   method 
  # end

  # def add_passenger
  #   @passengers << :passenger
  # end 

  # def num_adults
  #   method
  # end 

end