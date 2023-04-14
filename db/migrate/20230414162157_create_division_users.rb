class CreateDivisionUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :division_users do |t|
      t.integer :position
      t.integer :points
      t.integer :victorys
      t.integer :loses
      t.integer :draws
      t.integer :goal_scoredes
      t.integer :goal_concededs
      t.integer :position_previous
      t.integer :exact_scores

      t.timestamps
    end
  end
end
