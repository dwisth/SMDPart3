class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :startTime
      t.string :endTime
      t.string :description
      t.boolean :membersOnly

      t.timestamps
    end
  end
end
