class AddAssociationChampToDivision < ActiveRecord::Migration[7.0]
  def change
    change_table :divisions do |t|
      t.references :championships, foreign_key: true
    end
  end
end
