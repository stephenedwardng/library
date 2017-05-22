require ('minitest/autorun')
require ('minitest/rg')
require_relative('team')

class TestTeam < MiniTest::Test

  def setup()
    @team_1 = Team.new("Motherwell", ["Scott McDonnald", "James McFadden", "Craig Samson"], "Steve Robinson")
  end

  def test_team_name()
    assert_equal("Motherwell", @team_1.get_team_name())
  end

  def test_get_players()
    assert_equal(["Scott McDonnald", "James McFadden", "Craig Samson"], @team_1.get_players())
  end

  def test_get_coach()
    assert_equal("Steve Robinson", @team_1.get_coach())
  end

  def test_set_coach()
    coach = "Billy Davies"
    assert_equal("Billy Davies", @team_1.set_coach(coach))
  end

  def test_add_new_player()
    new_player = "Keith Laslie"
    assert_equal(["Scott McDonnald", "James McFadden", "Craig Samson", "Keith Laslie"], @team_1.add_new_player(new_player))
  end

  def test_find_player__found()
    player_to_find = "Craig Samson"
    assert_equal("Craig Samson", @team_1.find_player(player_to_find))
  end

  def test_find_player__not_found()
    player_to_find = "Eddie Ng"
    assert_nil(@team_1.find_player(player_to_find))
  end

  def test_update_points__win()
    win = "Win"
    assert_equal(3, @team_1.update_points(win))
  end

  def test_update_points__draw()
    win = "Draw"
    assert_equal(1, @team_1.update_points(win))
  end

  def test_update_points__lost()
    win = "Lose"
    assert_equal(0, @team_1.update_points(win))
  end

end