class Werewolf
    attr_reader :name, :location, :is_hungry
    def initialize(name, location = "London")
        @name = name
        @location = location
        @is_human = true
        @is_wolf = false
        @is_hungry = false
    end

    def human?
        @is_human
    end

    def wolf?
        @is_wolf
    end

    def change!
        if @is_human == true
            @is_human = false
            @is_wolf = true
            @is_hungry = true
        elsif @is_human == false
            @is_human = true
            @is_wolf = false
        end
    end

    def consume(victim)
        if @is_wolf
            victim.get_eaten
            @is_hungry = false
        end
    end
end