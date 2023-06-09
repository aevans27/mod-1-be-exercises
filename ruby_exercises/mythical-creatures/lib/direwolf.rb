class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect
    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        if @home == stark.location && @starks_to_protect.count < 2
            @starks_to_protect << stark
            stark.got_wolf_bodyguard
        end
    end

    def leaves(stark)
        if @starks_to_protect.include?(stark)
            stark.wolf_bodyguard_left
            @starks_to_protect = @starks_to_protect.reject do |current_stark|
                stark = current_stark
            end
        else
            Direwolf.new(stark.name)
        end
    end

    def hunts_white_walkers?
        if @starks_to_protect.empty?
            true
        else
            false
        end
    end
end

class Stark
    attr_reader :name, :location, :house_words
    def initialize(name, location = "Winterfell")
        @name = name
        @location = location
        @house_words = "Winter is Coming"
        @is_safe = false
    end

    def safe?
        if @is_safe
            true
        else
            false
        end
    end

    def got_wolf_bodyguard
        @is_safe = true
    end

    def wolf_bodyguard_left
        @is_safe = false
    end
end