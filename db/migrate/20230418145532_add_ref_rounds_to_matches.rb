class AddRefRoundsToMatches < ActiveRecord::Migration[7.0]
  def change

    remove_column :matches, :rounds_id

    add_reference :matches, :round, index: true, foreign_key: { to_table: :rounds }

  end
end
