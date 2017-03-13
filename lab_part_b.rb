class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player)
    @players << player
  end

  def win_or_lose(result)
    result == :win ? @points += 1 : return
  end



  # def team_name
  #   @team_name
  # end
  #
  # def players
  #   @players
  # end
  #
  # def coach
  #   @coach
  # end
  #
  # def set_coach_name(new_coach_name)
  #   @coach = new_coach_name
  # end

end
