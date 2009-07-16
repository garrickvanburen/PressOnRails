class Post < ActiveRecord::Base

  set_table_name "wp_posts"

  belongs_to :user,    :foreign_key => 'post_author'

  has_many  :comments, :foreign_key => 'comment_post_ID'
  has_many  :categories
  has_many  :post_metadatum

  def to_param
    post_name
  end
  
  
  def meta
    o = PostMetadata.find(:all, :conditions => {:post_id => self.ID})
    return Hash[*o.collect {|i| [i.meta_key, i.meta_value]}.flatten]
  end

end
