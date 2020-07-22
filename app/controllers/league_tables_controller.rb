class LeagueTablesController < ApplicationController
  def show
    @league_table = LeagueTable.all
  end
end
