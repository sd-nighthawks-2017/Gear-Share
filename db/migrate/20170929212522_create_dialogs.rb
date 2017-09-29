class CreateDialogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dialogs do |t|
      t.string :username
      t.string :body
      t.integer :reservation_id
      t.integer :user_id
      t.integer :renter_id

      t.timestamps
    end
  end
end
