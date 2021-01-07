class ChangeItemtypeToItemstore < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :itemtype, :itemstore
  end
end
