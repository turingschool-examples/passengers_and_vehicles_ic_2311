class vehicle
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

end