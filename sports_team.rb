class SportsTeam
def initialize(team_name, players, coach)

@Team_Name = team_name
@Players = players
@Coach = coach

end

def get_team_name
  return @Team_Name
end

def get_players
return @Players
end

def get_coach
return @Coach
end

def test_set_coach_name(new_coach)
  @Coach = new_coach
end

end
