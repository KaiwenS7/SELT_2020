class CreateRooms < ActiveRecord::Migration[4.2]
  def change
    create_table :rooms do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :rooms, :name, unique: true
  end
end
