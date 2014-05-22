class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :ticketType
      t.float :price

      t.timestamps
    end
  end
end
