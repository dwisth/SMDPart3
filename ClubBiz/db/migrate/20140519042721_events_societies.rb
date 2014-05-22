class CreateEventsSocieties < ActiveRecord::Migration
	def change
		create_table :events_societies do |t|
			t.integer :event_id
			t.integer :society_id
		end
	end
end
