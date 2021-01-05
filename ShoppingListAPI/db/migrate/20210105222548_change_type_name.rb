class ChangeTypeName < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :type, :itemtype
  end
end
