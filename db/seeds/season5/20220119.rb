# frozen_string_literal: true

ActiveRecord::Base.transaction do
  s5d4 = Day.create(sport_id: 1, season_id: 5, date: '19.01.2022'.to_date)
  s5d4.day_players.create(season_id: 5, team_id: 1, player_id:  2)
  s5d4.day_players.create(season_id: 5, team_id: 1, player_id:  5)
  s5d4.day_players.create(season_id: 5, team_id: 1, player_id:  6)
  s5d4.day_players.create(season_id: 5, team_id: 1, player_id: 18)
  s5d4.day_players.create(season_id: 5, team_id: 1, player_id: 29)
  s5d4.day_players.create(season_id: 5, team_id: 1, player_id: 38)

  s5d4.day_players.create(season_id: 5, team_id: 3, player_id: 17)
  s5d4.day_players.create(season_id: 5, team_id: 3, player_id: 21)
  s5d4.day_players.create(season_id: 5, team_id: 3, player_id: 22)
  s5d4.day_players.create(season_id: 5, team_id: 3, player_id: 42)
  s5d4.day_players.create(season_id: 5, team_id: 3, player_id: 61)
  s5d4.day_players.create(season_id: 5, team_id: 3, player_id: 63)
  s5d4.day_players.create(season_id: 5, team_id: 3, player_id:  4)

  s5d4.day_players.create(season_id: 5, team_id: 4, player_id:  9)
  s5d4.day_players.create(season_id: 5, team_id: 4, player_id:  1)
  s5d4.day_players.create(season_id: 5, team_id: 4, player_id:  8)
  s5d4.day_players.create(season_id: 5, team_id: 4, player_id: 58)
  s5d4.day_players.create(season_id: 5, team_id: 4, player_id: 23)
  s5d4.day_players.create(season_id: 5, team_id: 4, player_id: 64)

  g = Game.create(day_id: s5d4.id, team_left_id: 3, goals_left: 1, goals_right: 0, team_right_id: 1)
  g.goals.create(season_id: 5, team_id: 3, player_id: 22, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 3, goals_left: 1, goals_right: 1, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 3, player_id: 63, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: 6)
  g = Game.create(day_id: s5d4.id, team_left_id: 4, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 3, goals_left: 1, goals_right: 0, team_right_id: 1)
  g.goals.create(season_id: 5, team_id: 3, player_id: nil, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 3, goals_left: 0, goals_right: 1, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: 38)
  g.goals.create(season_id: 5, team_id: 1, player_id: 2, assist_player_id: 6)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: 23)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: 18)
  g.goals.create(season_id: 5, team_id: 1, player_id: 38, assist_player_id: 18)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 2)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 29, assist_player_id: 2)
  g.goals.create(season_id: 5, team_id: 1, player_id: 29, assist_player_id: 38)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 29, assist_player_id: 6)
  g.goals.create(season_id: 5, team_id: 1, player_id: 38, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 3, goals_left: 0, goals_right: 2, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 4, player_id: 29, assist_player_id: nil)

  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 4, player_id: 1, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 3, goals_left: 0, goals_right: 2, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 4, player_id: 1, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 4, player_id: 1, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 29, assist_player_id: 38)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 2, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 38)
  g.goals.create(season_id: 5, team_id: 1, player_id: 2, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 3, player_id: 4, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 4, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 4, goals_left: 0, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 3, player_id: 4, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 3, player_id: 61, assist_player_id: 4)
  g.goals.create(season_id: 5, team_id: 3, player_id: 42, assist_player_id: 17)
  g = Game.create(day_id: s5d4.id, team_left_id: 4, goals_left: 1, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 4, player_id: 1, assist_player_id: nil)
  g = Game.create(day_id: s5d4.id, team_left_id: 4, goals_left: 1, goals_right: 1, team_right_id: 1)
  g.goals.create(season_id: 5, team_id: 4, player_id: 8, assist_player_id: 1)
  g.goals.create(season_id: 5, team_id: 1, player_id: 29, assist_player_id: 38)
  g = Game.create(day_id: s5d4.id, team_left_id: 3, goals_left: 2, goals_right: 0, team_right_id: 1)
  g.goals.create(season_id: 5, team_id: 3, player_id: 4, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 4, assist_player_id: nil)

  s5d4.day_rates!
  Day.last.update!(videos: '')
end
