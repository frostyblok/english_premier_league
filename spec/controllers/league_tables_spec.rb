require 'rails_helper'

RSpec.describe LeagueTablesController, type: :controller do
  describe "GET #show" do
    let!(:team) { create(:league_table) }
    let(:team_attribute) { assigns(:league_table).first }

    it 'returns team attributes' do
      get :show

      expect(team_attribute["team"]).to eq(team.team)
      expect(team_attribute["played"]).to eq(team.played)
      expect(team_attribute["win"]).to eq(team.win)
      expect(team_attribute["lose"]).to eq(team.lose)
      expect(team_attribute["draw"]).to eq(team.draw)
      expect(team_attribute["for_goal"]).to eq(team.for_goal)
      expect(team_attribute["against"]).to eq(team.against)
      expect(team_attribute["points"]).to eq(team.points)
    end
  end
end
