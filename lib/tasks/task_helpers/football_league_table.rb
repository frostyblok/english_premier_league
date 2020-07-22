module FootballLeagueTable
  TEAM_NAME = 1
  PLAYED = 2
  WIN = 3
  LOSE = 4
  DRAW = 5
  FOR = 7
  AGAINST = 8
  PTS = 9

  def create_table
    base_path = Rails.root.join("lib", "assets")
    file_content = File.read(base_path.join("football.dat").to_s)


    file_content.each_line do |row|
      row_array = row.split(' ')

      # Regex checks if first element in row array is not a number; first element is meant
      # to be a number as in 1., 2., 3., etc
      # and returns zero if there are no matches
      relegation_demarcation = (row_array[0] =~ /\D/).zero?

      next if relegation_demarcation

      team_attribute = row.split(' ')

      league_params = {
        team: team_attribute[TEAM_NAME],
        played: team_attribute[TEAM_NAME],
        win: team_attribute[TEAM_NAME],
        lose: team_attribute[TEAM_NAME],
        draw: team_attribute[TEAM_NAME],
        for_goal: team_attribute[TEAM_NAME],
        against: team_attribute[TEAM_NAME],
        points: team_attribute[TEAM_NAME]
      }

      LeagueTable.create!(league_params)
    end
  end
end
