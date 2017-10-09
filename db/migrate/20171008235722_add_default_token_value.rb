class AddDefaultTokenValue < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :tokens, :integer, :default => 2
  end
end
