require_relative "players"
require_relative "question"

# P1 = Player.new('Thrillhouse')
# P2 = Player.new('Player2')

puts "+++ Welcome to the Ruby OOP game! +++"

print "Player 1, choose a name: "
@username = gets.chomp
P1 = Player.new(@username)
P1.name = P1.name

print "Player 2, choose a name: "
@username = gets.chomp
P2 = Player.new(@username)
P2.name = P2.name

def turn(current_player)
  puts "#{current_player.name}: What is #{Question.num1} + #{Question.num2}?"

  answer = gets.chomp

  if Question.validation(answer)
    puts ",.-~*´¯`*·~-.¸-* correct! *-,.-~*´¯`*·~-.¸"
  else
    puts "Sorry, incorrect."
    current_player.wrong_answer
  end

  puts "#{P1.name}: #{P1.lives}/3 vs #{P2.name}: #{P2.lives}/3"
end

loop do
  turn(P1)
  break puts "#{P2.name} wins with #{P2.lives} remaining." if (P1.gameover)
  turn(P2)
  break puts "#{P1.name} wins with #{P1.lives} lives remaining." if (P2.gameover)
  puts " "
  puts "Next turn ----->"
end

puts "*** Game over! Thanks for playing! ***"