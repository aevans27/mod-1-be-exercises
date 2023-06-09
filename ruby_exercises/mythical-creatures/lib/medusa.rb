class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        if @statues.count >= 3
            @statues.first.back_to_normal
            @statues.shift
        end
        victim.change_stoned
        @statues << victim
    end
end

class Person
    attr_reader :name, :is_stone
    def initialize(name)
        @name = name
        @is_stone = false
    end

    def stoned?
        @is_stone
    end

    def change_stoned
        @is_stone = true
    end

    def back_to_normal
        @is_stone = false
    end

end