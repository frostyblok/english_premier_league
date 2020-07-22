module LeagueTablesHelper
  def smallest_goal_difference?(id:)
    @smallest ||= begin
      LeagueTable.find(id).goal_difference == LeagueTable.smallest_goal_difference
    end
  end

  def file_content
    base_path = Rails.root.join("lib", "assets")
    file_content = File.read(base_path.join("football.dat").to_s)
  end
end
