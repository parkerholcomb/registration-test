# == Schema Information
#
# Table name: locations
#
#  id               :integer          not null, primary key
#  address_1        :string
#  address_2        :string
#  apartment_number :string
#  city             :string
#  state            :string
#  zip              :string
#  style            :string
#  description      :string
#  request_id       :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Location < ActiveRecord::Base
  belongs_to :request

  scope :users, -> { where(associated_type: 'User')  }

  STYLES = ['Home', 'Office','Public Place']

end
