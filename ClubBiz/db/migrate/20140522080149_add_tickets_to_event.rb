class AddTicketsToEvent < ActiveRecord::Migration
	def change
		change_table :tickets do |t|
			t.belongs_to :event
			t.belongs_to :user
		end
	end
end