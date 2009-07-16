class Page < ActiveRecord::Base

  set_table_name "wp_posts"

  belongs_to  :user

end
