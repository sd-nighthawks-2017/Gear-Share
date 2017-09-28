class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string  :name
      t.string  :description
      t.integer :reservation_id
      t.integer :renter_id
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
