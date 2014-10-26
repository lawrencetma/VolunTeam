class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.belongs_to :follower
      t.belongs_to :followee
      t.timestamps
    end
  end
end
