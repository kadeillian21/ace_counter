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
    @program_run_count = 0
    aces = false
    while aces == false
      deck = Deck.new
      hand = deck.hand
      if hand.all?{|c| c =~ /Ace/}
        aces == true
      end
      @program_run_count += 1
    end
    puts @program_run_count
  end

  def how_many_times_until_one
    start_time = Time.now
    until @program_run_count == 1
      ace_check
    end
    p Time.now - start_time
  end
end

deck = Deck.new
deck.ace_check