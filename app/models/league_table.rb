class LeagueTable < ApplicationRecord
  validates :team, presence: true
  validates_uniqueness_of :team
end
