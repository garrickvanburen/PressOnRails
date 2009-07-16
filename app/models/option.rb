class Option < ActiveRecord::Base

  set_primary_key "option_id"
  set_table_name "wp_options"

  def to_param
    option_name
  end

end
