class AddRefUserDivisionToDivisionUsers < ActiveRecord::Migration[7.0]
  def change
     #change the relation from division/user
     remove_column :division_users, :divisions_id
     remove_column :division_users, :users_id

     add_reference :division_users, :user, index: true, foreign_key: { to_table: :users }
     add_reference :division_users, :division, index: true, foreign_key: { to_table: :divisions }
  end
end
