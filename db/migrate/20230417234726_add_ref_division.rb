class AddRefDivision < ActiveRecord::Migration[7.0]
  def change

      #change the relation from division/championship
      remove_column :divisions, :championships_id
      add_reference :divisions, :championship, index: true, foreign_key: { to_table: :championships }
  
  end
end
