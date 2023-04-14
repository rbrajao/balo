class CreateDivisions < ActiveRecord::Migration[7.0]
  def change
    create_table :divisions do |t|
      t.string :name
      t.integer :goup
      t.integer :godown
      t.string :status

      t.timestamps
    end
  end
end
