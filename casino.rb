class Casino
  def initialize
    @gambling_wallet = 10
  end


  def add_player
    puts "What's the name of the player?"
    player_name = get.strip
    puts " "
    puts "Welcome #{player_name} to Royal Silicon Slopes Casino!"
  end

  def bet
    while true
      puts "How much do you want to bet?"
      bet = gets.strip
      if /\A+?\d+\z/.match(bet)
        bet = bet.to_i
        if bet < @gambling_wallet
          @gambling_wallet -= bet
          puts @gambling_wallet
          return bet
        else
          puts "That bet is above your bankroll!"
        end
      elsif /\A-\d+\z/.match(bet)
        puts "Please enter a positive number to bet."
      elsif !/\A+?\d+\z/.match(bet)
        puts "Please enter a number."
      else 
        puts "Error"
      end
    end
  end
end

d = Casino.new

d.bet

puts