class AddAssociationOthers < ActiveRecord::Migration[7.0]
  def change
    
    change_table :bets do |t|
      t.references :users, foreign_key: { to_table: :users }
      t.references :matches, foreign_key: { to_table: :matches }
    end

    change_table :clashes do |t|
      t.references :userhome, foreign_key: { to_table: :users }
      t.references :uservisit, foreign_key: { to_table: :users }
      t.references :rounds, foreign_key: { to_table: :rounds }
      t.references :divisions, foreign_key: { to_table: :divisions }
    end

    change_table :matches do |t|
      t.references :teamhome, foreign_key: { to_table: :teams }
      t.references :teamvisit, foreign_key: { to_table: :teams }
      t.references :rounds, foreign_key: { to_table: :rounds }
    end

  end
end
