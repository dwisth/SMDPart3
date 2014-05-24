class AddRegistrationNumberToSocieties < ActiveRecord::Migration
  def change
    add_column :societies, :registrationNumber, :string
  end
end
