class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.integer :score_home
      t.integer :score_visit
      t.string :total_point
      t.string :status

      t.timestamps
    end
  end
end
