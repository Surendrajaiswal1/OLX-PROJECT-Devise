class RenameCategoyNameToCategoryName < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :categoy_name, :category_name
  end
end
