class Deck
  def initialize
    values = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ]
  
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    @deck = []
    values.each do |value|
      suits.each do |suit|
        @deck << "#{value} of #{suit}"
      end
    end
    @deck
  end

  def shuffle_deck
    @deck.shuffle
  end

  def hand
    player_hand = shuffle_deck[1..4]
  end

  def ace_check
    program_run_count = 0
    aces = false
    while aces == false
      deck = Deck.new
      hand = deck.hand
      if hand[0] == "Ace of Diamonds" || hand[0] == "Ace of Clubs" || hand[0] == "Ace of Hearts" || hand[0] == "Ace of Spades"
        if hand[1] == "Ace of Diamonds" || hand[1] == "Ace of Clubs" || hand[1] == "Ace of Hearts" || hand[1] == "Ace of Spades"
          if hand[2] == "Ace of Diamonds" || hand[2] == "Ace of Clubs" || hand[2] == "Ace of Hearts" || hand[2] == "Ace of Spades"
            if hand[3] == "Ace of Diamonds" || hand[3] == "Ace of Clubs" || hand[3] == "Ace of Hearts" || hand[3] == "Ace of Spades"
              aces = true
              p hand
            else
              aces = false
            end
          else
            aces = false
          end
        else
          aces = false
        end
      else
        aces = false
      end
      program_run_count += 1
    end
    puts program_run_count
  end

end

deck = Deck.new
deck.ace_check
