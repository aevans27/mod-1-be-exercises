class Ogre
    attr_reader :name, :home, :swings, :encounter_counter
    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @encounter_counter = 0
        @swings = 0
    end

    def encounter(human)
        @encounter_counter += 1
        human.encounter
        if human.encounter_counter >= 3
            swing_at(human)
        end
    end

    def swing_at(human)
        @swings += 1
        if @swings.even?
            human.got_hit
        end
    end

    def apologize(human)
        human.wakes_up
    end

end

class Human
    attr_reader :name, :encounter_counter
    def initialize
        @name = "Jane"
        @encounter_counter = 0
        @coma = false
    end

    def encounter
        @encounter_counter += 1
    end

    def got_hit
        @coma = true
    end

    def wakes_up
        @coma = false
    end

    def notices_ogre?
        if encounter_counter >= 3
            true
        else
            false
        end
    end

    def knocked_out?
        if @coma
            true
        else
            false
        end
    end
end