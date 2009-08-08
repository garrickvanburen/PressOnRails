class Comment < ActiveRecord::Base

  set_primary_key "comment_ID"
  set_table_name "wp_comments"

  belongs_to :user
  belongs_to :post, :foreign_key => 'comment_post_ID', :counter_cache => 'comment_count'

  #has_raskimet

end
