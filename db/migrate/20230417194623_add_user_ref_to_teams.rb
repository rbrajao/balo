class AddUserRefToTeams < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :team_id
    add_reference :users, :team, index: true
  end
end
