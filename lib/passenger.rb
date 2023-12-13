class Passenger
  attr_reader :name, :age

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    if adult?
      @driver = true
    else
      false
    end
  end
end
