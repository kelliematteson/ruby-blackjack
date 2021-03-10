<<<<<<< HEAD
=======
# function to get players name & asks them if they want to play via console. The response to "do you want to play" can be tied to the game loop maybe? If we still want to go that way. 

def get_name 
    puts "Welcome to Ruby Blackjack. What's your name?"
    @playername = gets.chomp.capitalize
    puts "Hi #{@playername}, do you want to play (Y/N)?"
    @game_loop = gets.chomp.upcase
end

get_name 


>>>>>>> b20282517915458c93590b260c58a28f3e3379d8
#Classes
    #Player
        #main class

    #Human - instance of Player class
        #create the following accessable properties: *attr_accessor*
        #name
        #bankroll(start with 100)
        #hand (array to store cards)
        class Player
            attr_accessor :name, :bankroll, :total
            attr_reader :cards
            def start_game
                @cards = []
                @total = 0
                @bankroll = bankroll
                @name = name
            end
            def get_card deck
                #checks if deck array is empty, if it is, placeholder for a restart game method
                #if deck array is full, it removes 2 cards from the deck array and assigns it to the cards property
                deck.empty? ? ( p "No more cards, want to start another game?" ) : ( @cards = deck.shift(2) )
            end
            
        end
        # human = Player.new
    #house
        #create the following accessable properties: *attr_accessor*
        #name
        #bankroll(start with 10,000)
        #hand(array to store cards)
    #card
        #create the following readable properties: 
            #value (between 1 and 11)
            #suit
            #face
        ###every time a card is created, add into the deck array
        ###create 13 individual cards (one set), then make 4 copies to end up with 4 sets
        class Card
            attr_reader :rank, :suit
            attr_accessor :value
            def initialize(rank, suit)
                @rank = rank
                @suit = suit
                @value = 0
                get_card_value
            end
            def get_card_value
                case @rank
                when 2
                    @value = 2
                when 3
                    @value = 3
                when 4
                    @value = 4
                when 5
                    @value = 5
                when 6
                    @value = 6
                when 7
                    @value = 7
                when 8
                    @value = 8
                when 9
                    @value = 9
                when 10, 'J', 'Q', 'K'
                    @value = 10
                when 'A'
                    @value = 11
                end
            end
        end
#The Deck
    
    class Deck
        attr_reader :deck
        # ranks/suits for each of the cards
        RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
        SUITS = ['♣', '♠', '♥', '♦']
        def initialize
          @deck = []
          # i create an empty array called deck and then for I create a new card and pass through a rank and suit and push them into the array
          SUITS.each do |suit|
            RANKS.each do |rank|
              @deck << Card.new(rank, suit)
            end
          end
        end
        #method to randomize the deck
        def shuffle
            @deck = @deck.shuffle
        end
    end
 # spawning the classes below here
    human = Player.new
    computer = Player.new
    new_deck = Deck.new
    human.bankroll = 100
    computer.bankroll = 1000
<<<<<<< HEAD
    p new_deck.deck
=======
    # p new_deck.deck

    new_deck.deck
>>>>>>> b20282517915458c93590b260c58a28f3e3379d8
    computer.get_card new_deck.deck
    human.get_card new_deck.deck
    # p human 
    # p computer
    # randomized the deck we created using shuffle method
    new_deck.shuffle
    # prints the new fully shuffled deck that was created

human_hand = [human.cards[0].value, human.cards[0].suit, human.cards[1].value, human.cards[1].suit]
p "human hand is: #{human_hand}"
card_total = human.cards[0].value += human.cards[1].value
computer_card_total = computer.cards[0].value + computer.cards[1].value
p "players total hand value is: #{card_total}"
computer_hand = [computer.cards[0].value, computer.cards[0].suit, computer.cards[1].value, computer.cards[1].suit]
p "computer hand is: #{computer_hand}"
p "computers total hand value is: #{computer_card_total}"
if card_total > computer_card_total
    human.bankroll += 10 & computer.bankroll -= 10
    p "player wins! human bankroll is #{human.bankroll}, computer loses! computer bankroll is #{computer.bankroll}"
end
if computer_card_total > card_total
    computer.bankroll += 10 & human.bankroll -= 10
    p "player loses! human bankroll is #{human.bankroll}, computer wins! computer bankroll is #{computer.bankroll}"
end
if card_total == computer_card_total
    p "it was a tie! human bankroll is still #{human.bankroll} and computer bankroll is still #{computer.bankroll}"
end

### while loop to keep the game going until one player loses all their money or player quit

#Gameplay
    #Player chooses their name
        #creates a new player class
    #Game start 
        #method: *deal* two random cards generated for house and player
        # need a method to remove the cards taken so no card is taken twice 
            #sample method (grabs random items from array) Kellie, Andrea
        #method: *add_cards* adds the two randomly generated cards for house and player
        #method: *compare* compare the total of cards generated for house and player 
            #Allegra and Parker
        #method: *win* substracts 10 from the losing party and adds 10 to the winning party
            ## bankroll- updating Kevin, Marsallis
            #tie > puts a message to the player. nothing is affected.
         #win Joe/
        ##consider writing a switch case statement to cover all situations
##############UPDATED GAME STRUCTURE #########################################

# start_game Function - Allegra
    
        # get_name method Ryan
        # dealing_cards method 
        # comparison method (adding the cards, announcing winner) Kevin, Marsallis
        # updates the bankroll - Parker
        # continue the game or Quit? method Joe

    



