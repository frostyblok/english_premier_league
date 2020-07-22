require_relative "./task_helpers/football_league_table.rb"

include FootballLeagueTable

desc "Create league table"
task create_league_table: :environment do
  puts "Creating league table..."

  create_table

  puts "Done!"
end
