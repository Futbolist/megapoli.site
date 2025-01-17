# frozen_string_literal: true

ActiveRecord::Base.transaction do
  day = Day.new(season_id: @season_id, date: '04.04.2022'.to_date)
  day.videos = ''
  {
    1 => [ 5,  2,  6, 38, 18, 54],
    2 => [ 4, 10, 11,  1, 62, 68],
    3 => [22, 17, 42, 44, 57, 48],
    4 => [23,  9, 14]
  }.each do |key, val|
    val.map { |x| {team_id: key, player_id: x, season_id: day.season_id} }
       .each { |attrs| day.day_players.new(attrs) }
  end
  day.save

  g = day.games.create(team_left_id: 2, goals_left: 2, goals_right: 1, team_right_id: 1)
  g.goals.create(team_id: 2, player_id: 1, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 1, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g = day.games.create(team_left_id: 2, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 2, player_id: 4, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 58, assist_player_id: nil)
  g = day.games.create(team_left_id: 2, goals_left: 1, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 2, player_id: 4, assist_player_id: nil)
  g = day.games.create(team_left_id: 2, goals_left: 1, goals_right: 2, team_right_id: 1)
  g.goals.create(team_id: 2, player_id: 11, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 2, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 1, goals_right: 1, team_right_id: 2)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 11, assist_player_id: nil)
  g = day.games.create(team_left_id: 3, goals_left: 2, goals_right: 1, team_right_id: 4)
  g.goals.create(team_id: 3, player_id: 22, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: 48, assist_player_id: nil)
  g.goals.create(team_id: 4, player_id: nil, assist_player_id: nil)
  g = day.games.create(team_left_id: 3, goals_left: 0, goals_right: 1, team_right_id: 2)
  g.goals.create(team_id: 2, player_id: 11, assist_player_id: nil)
  g = day.games.create(team_left_id: 2, goals_left: 0, goals_right: 1, team_right_id: 1)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 4, player_id: 42, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 0, goals_right: 1, team_right_id: 3)
  g.goals.create(team_id: 3, player_id: 48, assist_player_id: nil)
  g = day.games.create(team_left_id: 3, goals_left: 0, goals_right: 0, team_right_id: 2)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 6, assist_player_id: nil)

  # Фиол 2:0 Зеленые (Миша, Дима)
  # Фиол 2:0 Белые (Коля, Дима
  # Фиол 2:0 Цвет (Дима, Миша)
  # Фиол 1:0 зел (Миша
  # Фиол 2:1 бел (дима - Саша)
  # Фиол 2:0 Цвет. (Миша, Дима)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 3)
  g.goals.create(team_id: 1, player_id: 2, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 1, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 1, team_right_id: 3)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: 54, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: 38, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 1, goals_right: 1, team_right_id: 2)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: 11, assist_player_id: nil)
  g = day.games.create(team_left_id: 4, goals_left: 0, goals_right: 2, team_right_id: 3)
  g.goals.create(team_id: 3, player_id: 48, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: 48, assist_player_id: nil)
  g = day.games.create(team_left_id: 3, goals_left: 2, goals_right: 0, team_right_id: 2)
  g.goals.create(team_id: 3, player_id: nil, assist_player_id: nil)
  g.goals.create(team_id: 3, player_id: nil, assist_player_id: nil)
  g = day.games.create(team_left_id: 3, goals_left: 1, goals_right: 2, team_right_id: 1)
  g.goals.create(team_id: 3, player_id: 48, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: 18, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 2, goals_right: 0, team_right_id: 4)
  g.goals.create(team_id: 1, player_id: nil, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: nil, assist_player_id: nil)
  g = day.games.create(team_left_id: 1, goals_left: 0, goals_right: 2, team_right_id: 2)
  g.goals.create(team_id: 2, player_id: nil, assist_player_id: nil)
  g.goals.create(team_id: 2, player_id: nil, assist_player_id: nil)
  g = day.games.create(team_left_id: 2, goals_left: 0, goals_right: 2, team_right_id: 1)
  g.goals.create(team_id: 1, player_id: nil, assist_player_id: nil)
  g.goals.create(team_id: 1, player_id: nil, assist_player_id: nil)

  day.day_rates!
end
