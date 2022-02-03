# frozen_string_literal: true

ActiveRecord::Base.transaction do
  s5d6 = Day.create(sport_id: 1, season_id: 5, date: '26.01.2022'.to_date)
  s5d6.day_players.create(season_id: 5, team_id: 1, player_id:  2)
  s5d6.day_players.create(season_id: 5, team_id: 1, player_id:  5)
  s5d6.day_players.create(season_id: 5, team_id: 1, player_id:  6)
  s5d6.day_players.create(season_id: 5, team_id: 1, player_id: 18)
  s5d6.day_players.create(season_id: 5, team_id: 1, player_id: 14)
  s5d6.day_players.create(season_id: 5, team_id: 1, player_id: 38)
  s5d6.day_players.create(season_id: 5, team_id: 1, player_id: 52)

  s5d6.day_players.create(season_id: 5, team_id: 3, player_id: 57)
  s5d6.day_players.create(season_id: 5, team_id: 3, player_id: 21)
  s5d6.day_players.create(season_id: 5, team_id: 3, player_id: 22)
  s5d6.day_players.create(season_id: 5, team_id: 3, player_id: 23)
  s5d6.day_players.create(season_id: 5, team_id: 3, player_id: 17)
  s5d6.day_players.create(season_id: 5, team_id: 3, player_id: 42)
  s5d6.day_players.create(season_id: 5, team_id: 3, player_id: 48)

  s5d6.day_players.create(season_id: 5, team_id: 2, player_id:  4)
  s5d6.day_players.create(season_id: 5, team_id: 2, player_id:  3)
  s5d6.day_players.create(season_id: 5, team_id: 2, player_id:  1)
  s5d6.day_players.create(season_id: 5, team_id: 2, player_id:  7)
  s5d6.day_players.create(season_id: 5, team_id: 2, player_id: 64)
  s5d6.day_players.create(season_id: 5, team_id: 2, player_id: 58)
  s5d6.day_players.create(season_id: 5, team_id: 2, player_id: 12)

  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 0, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 3, player_id: 48, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 2, goals_left: 1, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 2, player_id: 12, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 57, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 42, assist_player_id: 21)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 38, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 38, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 38)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 52, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 6)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 52, assist_player_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 14)
  g.goals.create(season_id: 5, team_id: 1, player_id: 2, assist_player_id: 52)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 38)
  g.goals.create(season_id: 5, team_id: 1, player_id: 52, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 52, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 2, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 57, assist_player_id: nil)

  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 52, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 14, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 1, goals_right: 2, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 2, assist_player_id: 4)
  g.goals.create(season_id: 5, team_id: 2, player_id: 7, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 2, player_id: 1, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 3, goals_left: 1, goals_right: 0, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 3, player_id: 21, assist_player_id: 42)
  g = Game.create(day_id: s5d6.id, team_left_id: 3, goals_left: 0, goals_right: 0, team_right_id: 1)
  g = Game.create(day_id: s5d6.id, team_left_id: 2, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: 5, team_id: 1, player_id: 52, assist_player_id: 18)
  g.goals.create(season_id: 5, team_id: 1, player_id: 38, assist_player_id: 18)
  g = Game.create(day_id: s5d6.id, team_left_id: 3, goals_left: 1, goals_right: 0, team_right_id: 1)
  g.goals.create(season_id: 5, team_id: 3, player_id: 48, assist_player_id: 22)
  g = Game.create(day_id: s5d6.id, team_left_id: 3, goals_left: 0, goals_right: 0, team_right_id: 2)
  g = Game.create(day_id: s5d6.id, team_left_id: 1, goals_left: 1, goals_right: 2, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 2, player_id: 58, assist_player_id: 1)
  g.goals.create(season_id: 5, team_id: 2, player_id: 4, assist_player_id: nil)
  g = Game.create(day_id: s5d6.id, team_left_id: 3, goals_left: 2, goals_right: 3, team_right_id: 2)
  g.goals.create(season_id: 5, team_id: 3, player_id: 17, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 48, assist_player_id: 21)
  g.goals.create(season_id: 5, team_id: 2, player_id: 1, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 2, player_id: 7, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 2, player_id: 4, assist_player_id: nil)

  s5d6.day_rates!
  Day.last.update!(videos: '')
end
