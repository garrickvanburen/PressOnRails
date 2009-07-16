class PostMetadata < ActiveRecord::Base

  set_primary_key "meta_id"
  set_table_name "wp_postmeta"

  belongs_to :post

end
