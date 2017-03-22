require ('pry')

class String
  define_method(:rock) do |other_player_play|
    self.downcase!()
    if self.eql?(other_player_play)
      return "draw"
    elsif self == "scizzor"&& other_player_play == "rock"
      return "lose"
    elsif self == "paper"&& other_player_play == "rock"
      return "win"
    elsif self == "paper"&& other_player_play == "scizzor"
      return "lose"
    elsif self == "rock"&& other_player_play == "scizzor"
      return "win"
    elsif self == "rock"&& other_player_play == "paper"
      return "lose"
    elsif self == "scizzor"&& other_player_play == "paper"
      return "win"
    end
  end
end
