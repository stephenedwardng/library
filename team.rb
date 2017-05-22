class Team

  def initialize (team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def get_team_name()
    return @team_name
  end

  def get_players()
    return @players
  end

  def get_coach()
    return @coach
  end

  def set_coach(coach)
    @coach = coach
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def find_player(player_to_find)
    for player in @players
      if player_to_find == player
          return player
      end
    end
    return nil
  end

  def update_points(win)
    case win
    when "Win"
       @points += 3
    when "Draw"
      @points += 1
    when "Lose"
      @points += 0 
    end
  end

end