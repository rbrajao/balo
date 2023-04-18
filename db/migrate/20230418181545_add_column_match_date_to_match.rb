class AddColumnMatchDateToMatch < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :match_date, :datetime 
  end
end
