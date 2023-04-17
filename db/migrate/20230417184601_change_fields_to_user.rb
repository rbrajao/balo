class ChangeFieldsToUser < ActiveRecord::Migration[7.0]
  def change

      change_table :users do |t|
        t.references :team, foreign_key: true
      end
    
  end
end
