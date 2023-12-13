class Passenger
  attr_reader :name,
              :age,
              :driver

  def initialize(input)
    @name = input["name"]
    @age = input["age"]
    @driver = false
  end

  def adult?
    @age >= 18
   end

   def is_driver?
     @driver
   end

   def drive
     @driver = true
   end
 end
