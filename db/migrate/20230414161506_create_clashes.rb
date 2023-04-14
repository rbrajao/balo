class CreateClashes < ActiveRecord::Migration[7.0]
  def change
    create_table :clashes do |t|
      t.integer :score_home
      t.integer :score_visit
      t.string :status

      t.timestamps
    end
  end
end
