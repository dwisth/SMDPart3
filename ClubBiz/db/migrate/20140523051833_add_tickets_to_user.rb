class AddTicketsToUser < ActiveRecord::Migration
   change_table :tickets do |t|
  	t.belongs_to :user
  end
end
