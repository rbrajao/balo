class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :imagem
      t.string :status

      t.timestamps
    end
  end
end
