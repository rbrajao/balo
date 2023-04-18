class ChangeRefBetToUser < ActiveRecord::Migration[7.0]
  def change

    #change the relation from division/championship
    remove_column :bets, :users_id
    remove_column :bets, :matches_id
    add_reference :bets, :user, index: true, foreign_key: { to_table: :users }
    add_reference :bets, :match, index: true, foreign_key: { to_table: :matches }

  end
end
