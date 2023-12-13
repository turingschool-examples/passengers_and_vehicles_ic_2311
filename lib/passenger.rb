class Passenger
  attr_reader :name, :age
  def initialize(attributes)
    @name = attributes["name"]
    @age = attributes["age"]
    @can_drive = false
  end

  def adult?
    @age >= 18
  end
 
  def driver?
    @can_drive
  end

  def drive
    @can_drive = true if self.adult? == true
  end
end