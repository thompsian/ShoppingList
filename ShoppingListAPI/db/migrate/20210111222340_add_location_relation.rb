class AddLocationRelation < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :location_id, :integer
  end
end
