class SportsTeam

  attr_accessor :team_name, :players, :coach

def initialize(team_name, players, coach, points)

@team_name = team_name
@players = players
@coach = coach
@points = 0

end

# def get_team_name
#   return @team_name
# end
#
# def get_players
# return @players
# end
#
# def get_coach
# return @coach
# end
#
# def set_coach_name(new_coach)
#   @coach = new_coach
# end

def add_new_player(new_player)
  @players.push(new_player)
end

def check_player_by_name(player_name)

for player in @players
if player_name == player
  return true
end
end
end

def win_or_lose(result)
  if result == "win"
  @points += 1
end
end
end
