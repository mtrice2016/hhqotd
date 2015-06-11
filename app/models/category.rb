class Category < ActiveRecord::Base

  has_many :category_quotes , :class_name => "CategoryQuote", :foreign_key => "category_id"
has_many :quotes, :through => :category_quotes
end
