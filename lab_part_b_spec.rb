require('minitest/autorun')
require('minitest/rg')
require_relative('./lab_part_b')

class SportsTeamTest < MiniTest::Test
  def setup
    @team = SportsTeam.new("Cleveland Cavaliers", ["LeBron James", "Kyrie Irving", "JR Smith", "Kevin Love"], "Tyronn Lue")
  end

  # def test_name_getter
  #   assert_equal("Cleveland Cavaliers", @team.team_name)
  # end
  #
  # def test_team_players_getter
  #   assert_equal(["LeBron James",
  #                 "Kyrie Irving",
  #                 "JR Smith",
  #                 "Kevin Love"], @team.players)
  # end
  #
  # def test_coach_getter
  #   assert_equal("Tyronn Lue", @team.coach)
  # end
  #
  # def test_coach_setter
  #   @team.set_coach_name("Steve Kerr")
  #   assert_equal("Steve Kerr", @team.coach)
  # end

  def test_attr_accessor_coach
    @team.coach = "Steve Kerr"
    assert_equal("Steve Kerr", @team.coach)
  end

  def test_add_player
    @team.add_player("Channing Frye")
    assert_equal(@team.players.last, "Channing Frye")
  end

  def test_add_points
    @team.win_or_lose(:win)
    assert_equal(1, @team.points)
  end


end
