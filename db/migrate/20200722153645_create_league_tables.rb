class CreateLeagueTables < ActiveRecord::Migration[5.2]
  def change
    create_table :league_tables do |t|
      t.string :team
      t.integer :played, default: 0
      t.integer :win, default: 0
      t.integer :lose, default: 0
      t.integer :draw, default: 0
      t.integer :for_goal, default: 0
      t.integer :against, default: 0
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
