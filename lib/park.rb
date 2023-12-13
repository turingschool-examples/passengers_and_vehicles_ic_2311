class Park 
    attr_reader :name, :admission_price 

    def initialize(park_data)
        @name = park_data[:name]
        @admission_price = park_data[:price]
    end 
end 