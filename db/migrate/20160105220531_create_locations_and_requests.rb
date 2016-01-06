class CreateLocationsAndRequests < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string   :address_1
      t.string   :address_2
      t.string   :apartment_number
      t.string   :city
      t.string   :state
      t.string   :zip
      t.string   :style
      t.string   :description
      t.integer  :request_id

      t.timestamps
    end

    create_table :requests do |t|
      t.integer :user_id
      t.string :name
      t.text   :comment

      t.timestamps
    end
  end
end
