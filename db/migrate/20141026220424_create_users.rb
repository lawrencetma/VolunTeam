class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :profile_picture, default: "http://i.stack.imgur.com/bJ120.png"
      t.string :about_me
      t.string :password_digest
    end
  end
end
