class LeagueTable < ApplicationRecord
  validates :team, presence: true
  validates_uniqueness_of :team

  scope :smallest_goal_difference, -> { pluck(:for_goal, :against).map {|yes| yes[0] - yes[1]}.sort.first }

  def goal_difference
    for_goal - against
  end
end
