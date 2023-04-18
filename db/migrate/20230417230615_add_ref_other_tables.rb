class AddRefOtherTables < ActiveRecord::Migration[7.0]
  def change

    #change the relation from rounds/championship
    remove_column :rounds, :championship_id
    add_reference :rounds, :championship, index: true, foreign_key: { to_table: :championships }

  end
end
