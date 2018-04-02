require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

def setup
@sports_team = SportsTeam.new("Team Lannister", ["Jaime", "Cersei", "Tyrion", "Kevan", "Lancel"], "Tywin")
end

def test_get_team_name
  assert_equal("Team Lannister",@sports_team.get_team_name)
end

def test_get_players
  assert_equal(["Jaime", "Cersei", "Tyrion", "Kevan", "Lancel"], @sports_team.get_players)
end

def test_get_coach

  assert_equal("Tywin", @sports_team.get_coach)

end 









end
