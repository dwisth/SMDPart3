class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :society_id
      t.string :location
      t.string :date
      t.string :startTime
      t.string :endTime
      t.string :description
      t.boolean :membersOnly


      t.timestamps
    end
    add index :events, [:society_id]
  end
end
