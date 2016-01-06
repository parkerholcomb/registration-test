class AddSaveAddressToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :save_address, :boolean
  end
end
