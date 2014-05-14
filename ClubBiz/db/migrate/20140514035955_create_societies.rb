class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies do |t|
      t.string :name
      t.string :description
      t.float :membershipFee
      t.boolean :verified

      t.timestamps
    end
  end
end
