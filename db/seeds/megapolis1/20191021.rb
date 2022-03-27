# frozen_string_literal: true

d1 = Day.new(season_id: @season_id, date: '21.10.2019'.to_date)
d1t1p1 = d1.day_players.new(season_id: @season_id, team_id: 1, player_id: 2)
d1t1p2 = d1.day_players.new(season_id: @season_id, team_id: 1, player_id: 5)
d1t1p3 = d1.day_players.new(season_id: @season_id, team_id: 1, player_id: 6)
d1t1p4 = d1.day_players.new(season_id: @season_id, team_id: 1, player_id: 8)
d1t1p5 = d1.day_players.new(season_id: @season_id, team_id: 1, player_id: 11)
d1t1p6 = d1.day_players.new(season_id: @season_id, team_id: 1, player_id: 18)
d1t1p7 = d1.day_players.new(season_id: @season_id, team_id: 1, player_id: 23)
d1t2p1 = d1.day_players.new(season_id: @season_id, team_id: 2, player_id: 4)
d1t2p2 = d1.day_players.new(season_id: @season_id, team_id: 2, player_id: 10)
d1t2p3 = d1.day_players.new(season_id: @season_id, team_id: 2, player_id: 12)
d1t2p4 = d1.day_players.new(season_id: @season_id, team_id: 2, player_id: 13)
d1t2p5 = d1.day_players.new(season_id: @season_id, team_id: 2, player_id: 12)
d1t2p6 = d1.day_players.new(season_id: @season_id, team_id: 2, player_id: 20)
d1t3p1 = d1.day_players.new(season_id: @season_id, team_id: 3, player_id: 1)
d1t3p2 = d1.day_players.new(season_id: @season_id, team_id: 3, player_id: 7)
d1t3p3 = d1.day_players.new(season_id: @season_id, team_id: 3, player_id: 9)
d1t3p4 = d1.day_players.new(season_id: @season_id, team_id: 3, player_id: 19)
d1t3p5 = d1.day_players.new(season_id: @season_id, team_id: 3, player_id: 21)
d1t3p6 = d1.day_players.new(season_id: @season_id, team_id: 3, player_id: 22)
d1.save

g1 = Game.create(day_id: d1.id, team_left_id: 3, goals_left: 0, goals_right: 1, team_right_id: 2)
g2 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 2)
g2.goals.create(season_id: @season_id, team_id: g2.team_left_id, player_id: 18)
g3 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 1, goals_right: 1, team_right_id: 3)
g3.goals.create(season_id: @season_id, team_id: 1, player_id: 8)
g3.goals.create(season_id: @season_id, team_id: 3, player_id: 1)
g4 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 2, goals_right: 1, team_right_id: 3)
g4.goals.create(season_id: @season_id, team_id: 3, player_id: 1)
g4.goals.create(season_id: @season_id, team_id: 2, player_id: 13)
g4.goals.create(season_id: @season_id, team_id: 2, player_id: 13)
g5 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 1, goals_right: 0, team_right_id: 1)
g5.goals.create(season_id: @season_id, team_id: 2, player_id: 13)
g6 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 1, goals_right: 1, team_right_id: 3)
g6.goals.create(season_id: @season_id, team_id: 2, player_id: 12)
g6.goals.create(season_id: @season_id, team_id: 3, player_id: 21)
g7 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 0, goals_right: 0, team_right_id: 3)
g8 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 0, goals_right: 0, team_right_id: 2)
g8.goals.create(season_id: @season_id, team_id: g8.team_left_id, player_id: 18)
g9 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
g9.goals.create(season_id: @season_id, team_id: 3, player_id: 17)
g9.goals.create(season_id: @season_id, team_id: 3, player_id: 7)
g10 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 0, goals_right: 0, team_right_id: 3)
g11 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 1, goals_right: 1, team_right_id: 1)
g11.goals.create(season_id: @season_id, team_id: 2, player_id: 4)
g11.goals.create(season_id: @season_id, team_id: 1, player_id: 14)
g12 = Game.create(day_id: d1.id, team_left_id: 3, goals_left: 2, goals_right: 0, team_right_id: 1)
g12.goals.create(season_id: @season_id, team_id: 3, player_id: 1)
g12.goals.create(season_id: @season_id, team_id: 3, player_id: 19)
g13 = Game.create(day_id: d1.id, team_left_id: 3, goals_left: 1, goals_right: 1, team_right_id: 2)
g13.goals.create(season_id: @season_id, team_id: 3, player_id: 7)
g13.goals.create(season_id: @season_id, team_id: 2, player_id: 20)
g14 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
g14.goals.create(season_id: @season_id, team_id: 1, player_id: 3)
g14.goals.create(season_id: @season_id, team_id: 1, player_id: 18)
g15 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 0, goals_right: 1, team_right_id: 3)
g15.goals.create(season_id: @season_id, team_id: 3, player_id: 19)
g16 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 0, goals_right: 1, team_right_id: 3)
g16.goals.create(season_id: @season_id, team_id: 3, player_id: 22)
g17 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 1, goals_right: 0, team_right_id: 1)
g17.goals.create(season_id: @season_id, team_id: 2, player_id: 4)
g18 = Game.create(day_id: d1.id, team_left_id: 2, goals_left: 1, goals_right: 1, team_right_id: 3)
g18.goals.create(season_id: @season_id, team_id: 2, player_id: 6)
g18.goals.create(season_id: @season_id, team_id: 3, player_id: 21)
g19 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 1, goals_right: 1, team_right_id: 3)
g19.goals.create(season_id: @season_id, team_id: 1, player_id: 18)
g19.goals.create(season_id: @season_id, team_id: 3, player_id: 7)
g20 = Game.create(day_id: d1.id, team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 2)
g20.goals.create(season_id: @season_id, team_id: 2, player_id: 16)
g20.goals.create(season_id: @season_id, team_id: 2, player_id: 6)
g21 = Game.create(day_id: d1.id, team_left_id: 3, goals_left: 0, goals_right: 0, team_right_id: 2)
g22 = Game.create(day_id: d1.id, team_left_id: 3, goals_left: 2, goals_right: 1, team_right_id: 1)
g22.goals.create(season_id: @season_id, team_id: 1, player_id: 18)
g22.goals.create(season_id: @season_id, team_id: 3, player_id: 7)
g22.goals.create(season_id: @season_id, team_id: 3, player_id: 19)
d1.day_rates!
