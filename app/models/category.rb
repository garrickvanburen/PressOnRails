class Category < ActiveRecord::Base

  set_table_name "wp_terms"

  has_many  :posts
  has_many  :links

  def to_param
    slug
  end

end
