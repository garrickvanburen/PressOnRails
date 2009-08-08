class Post < ActiveRecord::Base

  set_table_name "wp_posts"
  set_primary_key "ID"

  belongs_to  :user,    :foreign_key => 'post_author'


  has_many  :categorizations, :foreign_key => 'object_id'
  has_many  :categories, :through => :categorizations

  has_many  :post_metadatum

  has_many  :comments, :foreign_key => 'comment_post_ID'


  def to_param
    post_name
  end
  
  
  def enclosures
    enclosures = []
    PostMetadata.find(:all, :conditions => {:post_id => self.ID, :meta_key => 'enclosure'}, :select => :meta_value).each do |enc|
      enclosures << enc.meta_value.split
    end
    enclosures
  end
  
  
  def meta
    o = PostMetadata.find(:all, :conditions => {:post_id => self.ID})
    return Hash[*o.collect {|i| [i.meta_key, i.meta_value]}.flatten]
  end

end
