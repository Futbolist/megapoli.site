# frozen_string_literal: true

ActiveRecord::Base.transaction do
  day = Day.new(season_id: @season_id, date: '28.03.2022'.to_date)
  day.videos = 'Rv0aCibZKi8,TcHII20r1SQ,IlkRch3CyYo,HwVRmIYRU8s,0xyrZOONY5U,ZQj9O4cYf54,weSwZJY2wpk,uTY5LH3n20c,m1axq_UMTRA'
  {
    1 => [ 5,  2, 29, 38, 18,  6],
    2 => [ 1, 10, 11,  4,  9, 58],
    3 => [21, 22, 17, 44, 57,  8],
    4 => [     3, 23, 14, 67, 68]
  }.each do |key, val|
    val.map { |x| {team_id: key, player_id: x, season_id: day.season_id} }
       .each { |attrs| day.day_players.new(attrs) }
  end
  day.save

  g = day.games.create(team_left_id: 1, goals_left: 0, goals_right: 1, team_right_id: 3)
  g.goals.create(team_id: 3, player_id: 22, assist_player_id: nil)
  g = day.games.create(team_left_id: 4, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(team_id: 3, player_id: 21, assist_player_id: 57)
  g.goals.create(team_id: 3, player_id: 57, assist_player_id: 22)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 29, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 1, player_id: 2, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 29, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: 2)
  g = day.games.create(team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 2)
  g.goals.create(team_id: 2, player_id: 9, assist_player_id: 1)
  g.goals.create(team_id: 2, player_id: 1, assist_player_id: 4)
  g = day.games.create(team_left_id: 3, goals_left: 1, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 3, player_id: 17, assist_player_id: 22)
  g = day.games.create(team_left_id: 3, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 3, player_id: 22, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: 8, assist_player_id: 21)
  g = day.games.create(team_left_id: 3, goals_left: 2, goals_right: 1, team_right_id: 1)
  g.goals.create(team_id: 3, player_id: 8, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: 8, assist_player_id: 57)
  g.goals.create(team_id: 1, player_id: 29, assist_player_id: 6)
  g = day.games.create(team_left_id: 3, goals_left: 0, goals_right: 1, team_right_id: 2)
  g.goals.create(team_id: 2, player_id: 4, assist_player_id: nil)
  g = day.games.create(team_left_id: 4, goals_left: 0, goals_right: 2, team_right_id: 2)
  g.goals.create(team_id: 2, player_id: 1, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 58, assist_player_id: 1)

  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: 6)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: 38)
  g = day.games.create(team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(team_id: 3, player_id: 21, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: 8, assist_player_id: 21)
  g = day.games.create(team_left_id: 4, goals_left: 0, goals_right: 1, team_right_id: 3)
  g.goals.create(team_id: 3, player_id: 22, assist_player_id: nil)
  g = day.games.create(team_left_id: 2, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 2, player_id: 4, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 1, assist_player_id: nil)
  g = day.games.create(team_left_id: 2, goals_left: 1, goals_right: 1, team_right_id: 1)
  g.goals.create(team_id: 2, player_id: 4, assist_player_id: 10)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 4, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(team_id: 3, player_id: 8, assist_player_id: 17)
  g.goals.create(team_id: 3, player_id: 57, assist_player_id: 22)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 1, player_id: 29, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: 18)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: 18)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: 6)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 2, assist_player_id: 18)
  g = day.games.create(team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 2)
  g.goals.create(team_id: 2, player_id: 1, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 4, assist_player_id: nil)
  g = day.games.create(team_left_id: 4, goals_left: 0, goals_right: 2, team_right_id: 2)
  g.goals.create(team_id: 2, player_id: 1, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 4, assist_player_id: 9)
  g = day.games.create(team_left_id: 3, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 3, player_id: 21, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: 8, assist_player_id: nil)
  g = day.games.create(team_left_id: 3, goals_left: 1, goals_right: 2, team_right_id: 1)
  g.goals.create(team_id: 3, player_id: 21, assist_player_id: 17)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: 2)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: 18)

  day.day_rates!
end
