require 'rails_helper'

Rails.application.load_tasks

describe "create_league_table.rake" do
  it "create league table" do
    expect { run_task(task_name: "create_league_table") }.to change { LeagueTable.count }.by(20)
  end
end

def run_task(task_name:)
  Rake::Task[task_name].invoke
end
