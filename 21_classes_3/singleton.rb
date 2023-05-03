class Player
  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser"
  end
end

bob = Player.new
anna = Player.new

p bob.play_game
p anna.play_game
puts

def anna.play_game
  "Winner!"
end

p bob.play_game
p anna.play_game

p anna.singleton_methods