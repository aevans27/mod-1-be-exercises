class Wizard
    attr_reader :name
    def initialize(name, bearded:true)
        @name = name
        @bearded = bearded
        @spells_cast = 0
    end

    def bearded?
        if @bearded
            true
        else
            false
        end
    end

    def incantation(spell)
        "sudo #{spell}"
    end

    def rested?
        if @spells_cast < 3
            true
        else
            false
        end
    end

    def cast
        @spells_cast += 1
        "MAGIC MISSILE!"
    end
end