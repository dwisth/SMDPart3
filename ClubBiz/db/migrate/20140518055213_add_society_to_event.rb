class AddSocietyToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :society, index: true
  end
end
