module LeagueTablesHelper
  def smallest_goal_difference?(id:)
    @smallest ||= begin
      LeagueTable.find(id).goal_difference == LeagueTable.smallest_goal_difference
    end
  end
end
