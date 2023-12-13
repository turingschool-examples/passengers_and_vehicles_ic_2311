class Passenger 
  attr_reader :name, :age 

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @driver = false 
  end

  def adult?
    if age >= 18
      true 
    else
      false
    end
  end

  # def driver?
  #   method 
  # end

  def drive
    if adult?
      @driver = true 
    end
  end

end