# Tests from B exercise
require('minitest/autorun')
require('minitest/rg')
require_relative('../teams_b_exercise')

class TestSportTeam < MiniTest::Test

  # def test_get_team_name
  #   team = SportTeam.new("Liverpool F.C.", "Mark", "Louis P.")
  #   assert_equal("Liverpool F.C.", team.get_team_name)
  # end
  # def test_get_players
  #   team = SportTeam.new("Liverpool F.C.", "Mark", "Louis P.")
  #   assert_equal(["Mark", "John", "Tommy"], team.get_players)
  # end
  # def test_get_coach
  #   team = SportTeam.new("Liverpool F.C.", "Mark", "Louis P.")
  #   assert_equal("Louis P.", team.get_coach)
  # end
  # def test_set_new_coach
  #   team = SportTeam.new("Liverpool F.C.", "Mark", "Louis P.")
  #   team.set_new_coach("Stanley")
  #   assert_equal("Stanley", team.get_coach)
  # end

  def test_get_team_name
    team = SportTeam.new("Liverpool F.C.", "Mark", "Louis P.")
    assert_equal("Liverpool F.C.", team.team)
  end
  def test_get_players
    team = SportTeam.new("Liverpool F.C.", ["Mark", "John", "Tommy"], "Louis P.")
    assert_equal(["Mark", "John", "Tommy"], team.players)
  end
  def test_get_coach
    team = SportTeam.new("Liverpool F.C.", "Mark", "Louis P.")
    assert_equal("Louis P.", team.coach)
  end
  def test_set_new_coach
    team = SportTeam.new("Liverpool F.C.", "Mark", "Louis P.")
    team.coach = "Stanley"
    assert_equal("Stanley", team.coach)
  end
  def test_add_new_player
    team = SportTeam.new("Liverpool F.C.", ["Mark", "John", "Tommy"], "Louis P.")
    team.add_players("Rolf")
    assert_equal(["Mark", "John", "Tommy", "Rolf"], team.players)
  end
  def test_find_player_by_name__found
    team = SportTeam.new("Liverpool F.C.", ["Mark", "John", "Tommy", "Rolf"], "Louis P.")
    assert_equal(true, team.find_player_by_name("Tommy"))
  end
  def test_find_player_by_name__not_found
    team = SportTeam.new("Liverpool F.C.", ["Mark", "John", "Tommy", "Rolf"], "Louis P.")
    assert_equal(false, team.find_player_by_name("David"))
  end
  def test_update_points__lose
    team = SportTeam.new("Liverpool F.C.", ["Mark", "John", "Tommy", "Rolf"], "Louis P.")
    team.update_points("Loser!")
    assert_equal(0, team.points)
  end
  def test_update_points__win
    team = SportTeam.new("Liverpool F.C.", ["Mark", "John", "Tommy", "Rolf"], "Louis P.")
    team.update_points("Win!")
    assert_equal(1, team.points)
  end

  
end
