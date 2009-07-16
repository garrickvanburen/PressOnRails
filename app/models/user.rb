class User < ActiveRecord::Base

  set_primary_key "ID"
  set_table_name  "wp_users"

  has_many  :posts
  has_many  :comments
  has_many  :links
  has_many  :pages
  has_many  :options


  before_create :hash_password

  def to_param
    user_nicename
  end

  def hash_password
    self.password = Digest::MD5.hexdigest(self.password)
  end

end
