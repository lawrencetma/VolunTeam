class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :organization
      t.string :description
      t.string :date
      t.string :address
      t.string :contact_email
      t.string :contact_phone
      t.string :website
      t.string :event_picture
      t.integer :creator
      t.timestamps
    end
  end
end
