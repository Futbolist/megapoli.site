# frozen_string_literal: true

ActiveRecord::Base.transaction do
  s4d28 = Day.new(season_id: @season_id, date: '13.12.2021'.to_date)
  s4d28.day_players.new(season_id: @season_id, team_id: 1, player_id:  2)
  s4d28.day_players.new(season_id: @season_id, team_id: 1, player_id:  5)
  s4d28.day_players.new(season_id: @season_id, team_id: 1, player_id:  6)
  s4d28.day_players.new(season_id: @season_id, team_id: 1, player_id: 29)
  s4d28.day_players.new(season_id: @season_id, team_id: 1, player_id: 38)
  s4d28.day_players.new(season_id: @season_id, team_id: 1, player_id: 14)
  s4d28.day_players.new(season_id: @season_id, team_id: 1, player_id: 18)

  s4d28.day_players.new(season_id: @season_id, team_id: 2, player_id:  4)
  s4d28.day_players.new(season_id: @season_id, team_id: 2, player_id: 10)
  s4d28.day_players.new(season_id: @season_id, team_id: 2, player_id: 11)
  s4d28.day_players.new(season_id: @season_id, team_id: 2, player_id: 12)
  s4d28.day_players.new(season_id: @season_id, team_id: 2, player_id: 13)
  s4d28.day_players.new(season_id: @season_id, team_id: 2, player_id: 58)

  s4d28.day_players.new(season_id: @season_id, team_id: 3, player_id: 21)
  s4d28.day_players.new(season_id: @season_id, team_id: 3, player_id: 22)
  s4d28.day_players.new(season_id: @season_id, team_id: 3, player_id: 42)
  s4d28.day_players.new(season_id: @season_id, team_id: 3, player_id: 54)
  s4d28.day_players.new(season_id: @season_id, team_id: 3, player_id:  8)
  s4d28.save

  g = Game.create(day_id: s4d28.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 29, assist_player_id: 2)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 2, assist_player_id: 18)
  g = Game.create(day_id: s4d28.id, team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 2)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 6, assist_player_id: 2)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 13, assist_player_id: 11)
  g = Game.create(day_id: s4d28.id, team_left_id: 1, goals_left: 1, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 8, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 1, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 13, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 8, assist_player_id: 22)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 1, goals_right: 0, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 12, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 3, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 38, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 29, assist_player_id: 18)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 2, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 3, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 6, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: 2)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 0, goals_right: 1, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 29, assist_player_id: 6)
  g = Game.create(day_id: s4d28.id, team_left_id: 3, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 38, assist_player_id: 18)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: 2)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 2, goals_right: 0, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 4, assist_player_id: 12)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 4, assist_player_id: 13)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 1, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 11, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 54, assist_player_id: 22)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 54, assist_player_id: 22)

  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 1, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 13, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 2, assist_player_id: 29)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 3, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: nil, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 2, goals_right: 0, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 4, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 12, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 22, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 8, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 8, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 21, assist_player_id: 8)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 2, goals_right: 1, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 11, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 2, player_id: 11, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 54, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 38, assist_player_id: 2)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 3, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 38, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 38, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 29, assist_player_id: 38)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 38, assist_player_id: 14)
  g = Game.create(day_id: s4d28.id, team_left_id: 3, goals_left: 1, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 3, player_id: 21, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 14, assist_player_id: 18)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 5, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 2, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 6, assist_player_id: 18)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 18, assist_player_id: nil)
  g = Game.create(day_id: s4d28.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 6, assist_player_id: nil)
  g.goals.create(season_id: @season_id, team_id: 1, player_id: 6, assist_player_id: nil)

  s4d28.day_rates!
  Day.last.update!(videos: 'UWMwFZi9GgU,D7T0UDIdvao,YM2UyUC0fP4,Ammk1eWg7DY,8_Ob0M8qQFM,omG8_CWDIJg,12-acj6KHEw,7VG2nqPQpuA,P_pay7vEfxA')
end
