class Centaur
    attr_reader :name, :breed, :is_sick
    def initialize(name, breed)
        @name = name
        @breed = breed
        @actions_taken = 0
        @laying_down = false
        @is_sick = false
    end

    def shoot
        if @actions_taken >= 3
            "NO!"
        elsif @laying_down
            "NO!"
        else
            @actions_taken += 1
            "Twang!!!"
        end
    end

    def run
        if @actions_taken >= 3
            "NO!"
        elsif @laying_down
            "NO!"
        else
            @actions_taken += 1
            "Clop clop clop clop!"
        end
    end

    def sleep
        if standing?
            "NO!"
        else
            @actions_taken = 0
        end
    end

    def drink_potion
        if @laying_down == false && @actions_taken != 0
            @actions_taken = 0
        elsif @actions_taken == 0
            @is_sick = true
        end
    end

    def lay_down
        @laying_down = true
    end

    def stand_up
        @laying_down = false
    end

    def cranky?
        if @actions_taken >= 3
            true
        else
            false
        end
    end

    def standing?
        if @laying_down
            false
        else
            true
        end
    end

    def laying?
        if @laying_down
            true
        else
            false
        end
    end


end