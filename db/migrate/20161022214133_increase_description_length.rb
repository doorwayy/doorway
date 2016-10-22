class IncreaseDescriptionLength < ActiveRecord::Migration[5.0]
  def up
    change_column :shelters, :description, :string, limit: 4096, null: false, default: ''
  end
  def down
    change_column :shelters, :description, :string, limit: 191, null: false, default: ''
  end
end
