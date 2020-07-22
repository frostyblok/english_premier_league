require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the LeagueTablesHelper. For example:
#
# describe LeagueTablesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe LeagueTablesHelper, type: :helper do
  let!(:first_team) { create(:league_table) }

  context 'when team has smallest goal difference' do
    it 'returns true' do
      expect(helper.smallest_goal_difference?(id: first_team.id)).to be_truthy
    end
  end

  context 'when team does not have a small goal difference' do
    let(:second_team) { create(:league_table, team: 'Second team', for_goal: 150, against: 12) }

    it 'returns false' do
      expect(helper.smallest_goal_difference?(id: second_team.id)).to be_falsey
    end
  end
end
