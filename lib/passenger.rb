class Passenger
  attr_reader :name,
              :age,
              :driver

  def initialize(input)
    @name = input["name"]
    @age = input["age"]
    @driver = false
  end
