##########PLAYER CLASS ##################

class Player
        attr_accessor :name
        attr_accessor :bankroll
        attr_accessor :total
        attr_reader :cards
        def initialize name
          @cards = []
          @total = 0
          @bankroll = 100
          @name = name
        end
    end 

   human = Player.new
   human.name = "kellie"
   p human.name