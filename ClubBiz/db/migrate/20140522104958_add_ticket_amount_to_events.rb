class AddTicketAmountToEvents < ActiveRecord::Migration
  def change
    add_column :events, :ticketAmount, :integer
  end
end
