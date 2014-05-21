class AddSocietyToEvent < ActiveRecord::Migration
  # def change
  #   add_reference :events, :society, index: true
  # end
  change_table :events do |t|
  	t.belngs_to :society
end
