require('minitest/autorun')
require('minitest/rg')
require_relative('./lab_part_b')

class SportsTeamTest < MiniTest::Test
  def setup
    @team = SportsTeam.new("Cleveland Cavaliers", ["LeBron James", "Kyrie Irving", "JR Smith", "Kevin Love"], "Tyronn Lue")
  end

  def test_name_getter
    assert_equal("Cleveland Cavaliers", @team.team_name)
  end

  def test_team_players_getter
    assert_equal(["LeBron James",
                  "Kyrie Irving",
                  "JR Smith",
                  "Kevin Love"], @team.players)
  end
end
