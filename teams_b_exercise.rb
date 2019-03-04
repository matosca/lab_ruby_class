# Test from B exercise

class SportTeam

  attr_reader :team
  attr_accessor :players, :coach, :points

  def initialize(team_name, players, coach)
    @team = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_players(new_player)
    @players << new_player
  end

  def find_player_by_name(name)
    for player_name in @players
      return true if player_name == name
    end
    return false
  end

  def update_points(game_result)
    @points +=1 if game_result == "Win!"
  end
  # def get_team_name
  #   return @team
  # end
  # def get_players
  #   @players = ["Mark", "John", "Tommy"]
  #   return @players
  # end
  # def get_coach
  #   return @coach
  # end
  # def set_new_coach(new_name)
  #   @coach = new_name
  # end
end
