class AddRefClashToDivisionRound < ActiveRecord::Migration[7.0]
  def change

    remove_column :clashes, :divisions_id
    remove_column :clashes, :rounds_id

    add_reference :clashes, :round, index: true, foreign_key: { to_table: :rounds }
    add_reference :clashes, :division, index: true, foreign_key: { to_table: :divisions }

  end
end
