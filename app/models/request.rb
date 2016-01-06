# == Schema Information
#
# Table name: requests
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  comment    :text
#  created_at :datetime
#  updated_at :datetime
#

class Request < ActiveRecord::Base
  has_one :location
  accepts_nested_attributes_for :location

end
