class CreateCategoryQuotes < ActiveRecord::Migration
  def change
    create_table :category_quotes do |t|
      t.integer :quote_id
      t.integer :category_id

      t.timestamps

    end
  end
end
