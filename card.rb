class Card
        attr_accessor :rank, :suit

        def initialize(rank, suit)
            @rank = rank
            @suit = suit
        end

        def output_card
            puts "#{self.rank} of #{self.suit}"
        end

        def self.random_card
            Card.new(rand(10), :spades)
        end
    end

class Deck
    def initialize
        @cards = []
        @cards << Card.new(1, :spades)
        @cards << Card.new(2, :spades)
        @cards << Card.new(3, :spades)
        @cards << Card.new(4, :spades)
        @cards << Card.new(5, :spades)
        @cards << Card.new(6, :spades)
        @cards << Card.new(7, :spades)
        @cards << Card.new(8, :spades)
        @cards << Card.new(9, :spades)
        @cards << Card.new(10, :spades)
        @cards << Card.new(11, :spades)
        @cards << Card.new(12, :spades)
        @cards << Card.new(13, :spades)
        @cards << Card.new(1, :clubs)
        @cards << Card.new(2, :clubs)
        @cards << Card.new(3, :clubs)
        @cards << Card.new(4, :clubs)
        @cards << Card.new(5, :clubs)
        @cards << Card.new(6, :clubs)
        @cards << Card.new(7, :clubs)
        @cards << Card.new(8, :clubs)
        @cards << Card.new(9, :clubs)
        @cards << Card.new(10, :clubs)
        @cards << Card.new(11, :clubs)
        @cards << Card.new(12, :clubs)
        @cards << Card.new(13, :clubs)
        @cards << Card.new(1, :hearts)
        @cards << Card.new(2, :hearts)
        @cards << Card.new(3, :hearts)
        @cards << Card.new(4, :hearts)
        @cards << Card.new(5, :hearts)
        @cards << Card.new(6, :hearts)
        @cards << Card.new(7, :hearts)
        @cards << Card.new(8, :hearts)
        @cards << Card.new(9, :hearts)
        @cards << Card.new(10, :hearts)
        @cards << Card.new(11, :hearts)
        @cards << Card.new(12, :hearts)
        @cards << Card.new(13, :hearts)
        @cards << Card.new(1, :diamonds)
        @cards << Card.new(2, :diamonds)
        @cards << Card.new(3, :diamonds)
        @cards << Card.new(4, :diamonds)
        @cards << Card.new(5, :diamonds)
        @cards << Card.new(6, :diamonds)
        @cards << Card.new(7, :diamonds)
        @cards << Card.new(8, :diamonds)
        @cards << Card.new(9, :diamonds)
        @cards << Card.new(10, :diamonds)
        @cards << Card.new(11, :diamonds)
        @cards << Card.new(12, :diamonds)
        @cards << Card.new(13, :diamonds)
    end

    def shuffle
        @cards.shuffle!
    end

    def output
        @cards.each do |card|
            card.output_card
        end
    end
end

deck = Deck.new
deck.shuffle
deck.output