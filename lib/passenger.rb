class Passenger 
  attr_reader :name, :age 

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
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

end