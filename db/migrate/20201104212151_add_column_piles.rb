class AddColumnPiles < ActiveRecord::Migration[4.2]
  def change
    remove_column :piles, :cards
    add_column :piles, :cards, :JSON
  end
end
