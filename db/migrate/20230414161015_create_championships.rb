class CreateChampionships < ActiveRecord::Migration[7.0]
  def change
    create_table :championships do |t|
      t.string :name
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
