class CreateRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :rounds do |t|
      t.string :name
      t.datetime :limit_date_bet
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
