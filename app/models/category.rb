class Category < ActiveRecord::Base

  set_table_name "wp_terms"
  set_primary_key "term_id"
  
  has_many  :categorizations, :foreign_key => 'term_taxonomy_id'
  has_many  :posts, :through => :categorizations, :foreign_key => 'object_id'
  
  has_many  :links

  def to_param
    slug
  end

end
