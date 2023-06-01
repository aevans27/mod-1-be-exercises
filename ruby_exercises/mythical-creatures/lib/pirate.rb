class Pirate
    attr_reader :name, :job, :booty
    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @henious_acts = 0
        @booty = 0
    end

    def cursed?
        if @henious_acts > 2
            true
        else
            false
        end
    end

    def commit_heinous_act
        @henious_acts += 1
    end

    def rob_ships
        @booty += 100
    end
end