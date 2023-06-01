class Dragon
    attr_reader :name, :color, :rider
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @times_eaten = 0
    end

    def hungry?
        if @times_eaten >= 3
            false
        else
            true
        end
    end

    def eat
        @times_eaten += 1
    end
end