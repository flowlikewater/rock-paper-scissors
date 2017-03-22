require('rspec')
require('rock')
require('pry')

describe('String#rock_paper_scizzors') do

  it("if computer and player same result") do
      other_player_play = "rock"
      expect("rock".rock(other_player_play)).to(eq("draw"))
    end

end
