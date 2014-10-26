class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.belongs_to :event
      t.belongs_to :user
    end
  end
end
