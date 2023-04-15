class AddAssociationUserDivToDivisionUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :division_users do |t|
      t.references :users, foreign_key: { to_table: :users }
      t.references :divisions, foreign_key: { to_table: :divisions }
    end
  end
  
end
