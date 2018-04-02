require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

def setup
@sports_team = SportsTeam.new("Team Lannister", ["Jaime", "Cersei", "Tyrion", "Kevan", "Lancel"], "Tywin")
end

def test_get_team_name
  assert_equal("Team Lannister",@sports_team.team_name)
end

def test_get_players
  assert_equal(["Jaime", "Cersei", "Tyrion", "Kevan", "Lancel"], @sports_team.players)
end

def test_get_coach

  assert_equal("Tywin", @sports_team.coach)

end

def test_set_coach_name

@sports_team.coach = "Ned Stark"
assert_equal("Ned Stark", @sports_team.coach)

end

def test_add_new_player
@sports_team.add_new_player("Sansa")
assert_equal(["Jaime", "Cersei", "Tyrion", "Kevan", "Lancel", "Sansa"], @sports_team.players)

end





end
