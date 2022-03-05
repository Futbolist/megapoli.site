# frozen_string_literal: true

ActiveRecord::Base.transaction do
  s5d15 = Day.create(sport_id: 1, season_id: 5, date: '02.03.2022'.to_date)
  s5d15.day_players.create(season_id: 5, team_id: 1, player_id: 10)
  s5d15.day_players.create(season_id: 5, team_id: 1, player_id:  5)
  s5d15.day_players.create(season_id: 5, team_id: 1, player_id:  6)
  s5d15.day_players.create(season_id: 5, team_id: 1, player_id: 18)
  s5d15.day_players.create(season_id: 5, team_id: 1, player_id: 38)
  s5d15.day_players.create(season_id: 5, team_id: 1, player_id:  9)
  s5d15.day_players.create(season_id: 5, team_id: 1, player_id: 44)

  s5d15.day_players.create(season_id: 5, team_id: 4, player_id:  1)
  s5d15.day_players.create(season_id: 5, team_id: 4, player_id:  3)
  s5d15.day_players.create(season_id: 5, team_id: 4, player_id:  4)
  s5d15.day_players.create(season_id: 5, team_id: 4, player_id:  7)
  s5d15.day_players.create(season_id: 5, team_id: 4, player_id: 23)
  s5d15.day_players.create(season_id: 5, team_id: 4, player_id: 67)
  s5d15.day_players.create(season_id: 5, team_id: 4, player_id: 62)

  s5d15.day_players.create(season_id: 5, team_id: 3, player_id: 21)
  s5d15.day_players.create(season_id: 5, team_id: 3, player_id: 17)
  s5d15.day_players.create(season_id: 5, team_id: 3, player_id: 54)
  s5d15.day_players.create(season_id: 5, team_id: 3, player_id: 57)
  s5d15.day_players.create(season_id: 5, team_id: 3, player_id: 48)
  s5d15.day_players.create(season_id: 5, team_id: 3, player_id: 42)
  s5d15.day_players.create(season_id: 5, team_id: 3, player_id: 65)

  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: 18)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 54, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 0, goals_right: 1, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 4, player_id: 7, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 3, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 3, player_id: 21, assist_player_id: 48)
  g.goals.create(season_id: 5, team_id: 3, player_id: 42, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 42, assist_player_id: 57)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 6)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: 9)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 10)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 9)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 6)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 38)
  g.goals.create(season_id: 5, team_id: 4, player_id: nil, assist_player_id: 4)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 44, assist_player_id: 6)

  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 18, assist_player_id: 6)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 3, player_id: 21, assist_player_id: 48)
  g.goals.create(season_id: 5, team_id: 3, player_id: 65, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 4, goals_left: 1, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 4, player_id: 4, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 48, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 65, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 3, player_id: 48, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 42, assist_player_id: 17)
  g = Game.create(day_id: s5d15.id, team_left_id: 3, goals_left: 0, goals_right: 0, team_right_id: 4)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 1, goals_right: 1, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: 38)
  g.goals.create(season_id: 5, team_id: 4, player_id: 1, assist_player_id: 23)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 3, player_id: 57, assist_player_id: 42)
  g.goals.create(season_id: 5, team_id: 3, player_id: 57, assist_player_id: 54)
  g = Game.create(day_id: s5d15.id, team_left_id: 4, goals_left: 2, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 4, player_id: nil, assist_player_id: 1)
  g.goals.create(season_id: 5, team_id: 4, player_id: 1, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: 54, assist_player_id: 21)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: 9)
  g = Game.create(day_id: s5d15.id, team_left_id: 1, goals_left: 1, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: 5, team_id: 1, player_id: 6, assist_player_id: 10)
  g.goals.create(season_id: 5, team_id: 3, player_id: 54, assist_player_id: nil)
  g = Game.create(day_id: s5d15.id, team_left_id: 3, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(season_id: 5, team_id: 3, player_id: 54, assist_player_id: nil)
  g.goals.create(season_id: 5, team_id: 3, player_id: nil, assist_player_id: nil)

  s5d15.day_rates!
  Day.last.update!(videos: 'eeRFKrw3GKk,7FlVe8Gtegc,eqrsni7Yiyw,p0yCkdvs8bI,94JED7sMjLY,2NqI9-_JoKk,h2tJbVZasUA,pngXlIaDKac,pij6KmluNx8')
end
# Player.update_stats!(5)
