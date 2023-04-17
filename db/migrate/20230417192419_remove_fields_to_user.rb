class RemoveFieldsToUser < ActiveRecord::Migration[7.0]
  def change

    remove_column :users, :teams_id
    

  end
end
