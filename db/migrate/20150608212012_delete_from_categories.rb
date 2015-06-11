class DeleteFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :quote_id
  end
end
