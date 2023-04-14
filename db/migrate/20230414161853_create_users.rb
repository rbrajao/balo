class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.boolean :admin
      t.string :document
      t.boolean :notification
      t.string :status

      t.timestamps
    end
  end
end
