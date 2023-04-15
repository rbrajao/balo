class AddAssociationChampionChipToRound < ActiveRecord::Migration[7.0]
  def change
    change_table :rounds do |t|
      t.references :championships, foreign_key: true
    end
  end
end
