# your code goes here

require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name 
        @name
    end

    def bank_account 
        @bank_account
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness 
        @happiness
    end

    def happiness=(value)
        if 0 > value
            @happiness = 0
        elsif value > 10
            @happiness = 10
        else 
            @happiness =value
        end
    end

    def hygiene 
        @hygiene
    end

    def hygiene=(value)
        if 0 > value
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else 
            @hygiene = value
        end
    end

    def clean?
        (@hygiene >7)? true : false
    end

    def happy?
        (@happiness >7)? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins" 
    end

    def take_bath
        self.hygiene= @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness= @happiness + 2
        self.hygiene= @hygiene -3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness= @happiness + 3
        friend.happiness= friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness= @happiness - 2
            friend.happiness= friend.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness= @happiness + 1
            friend.happiness= friend.happiness + 1 
            return "blah blah sun blah rain"
        else 
           return "blah blah blah blah blah"
        end
    end

end