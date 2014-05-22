class CreateEventPosts < ActiveRecord::Migration
  def change
    create_table :event_posts do |t|
      t.string :title
      t.string :msg

      t.timestamps
    end
  end
end
