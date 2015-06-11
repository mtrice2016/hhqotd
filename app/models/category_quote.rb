class CategoryQuote < ActiveRecord::Base
  belongs_to :quote , :class_name => "Quote", :foreign_key => "quote_id"
  belongs_to :category , :class_name => "Category", :foreign_key => "category_id"

  validates :quote, :presence => true, :uniqueness => { :scope => :category }
  validates :category, :presence => true
end
