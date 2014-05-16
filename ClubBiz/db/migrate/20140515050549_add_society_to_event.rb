class AddSocietyToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :event, index: true
  end
end
