class Link < ActiveRecord::Base

  set_primary_key "link_id"
  set_table_name "wp_links"

  belongs_to :user

end
