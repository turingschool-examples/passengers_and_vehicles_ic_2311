class Passenger
    attr_reader :name,
                :age,
                :drives
    def initialize(hash)
        @name =  hash["name"]
        @age = hash["age"]
        @drives = false
    end

    def adult?
        if @age >= 18
            true
        else
            false
        end
    end 

    def driver?
        @drives
    end

    def drive 
        @drives = true
    end


end 