class LeagueTablesController < ApplicationController
  include LeagueTablesHelper

  def show
    @league_table = LeagueTable.all
  end

  def raw_table
    @file_content = file_content
  end
end
