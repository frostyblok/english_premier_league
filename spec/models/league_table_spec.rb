require 'rails_helper'

RSpec.describe LeagueTable, type: :model do
  it { should validate_presence_of(:team) }
  it { should validate_uniqueness_of(:team) }
end
