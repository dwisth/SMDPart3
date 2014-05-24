class AddCustomWebsiteToSocieties < ActiveRecord::Migration
  def change
    add_column :societies, :customWebsite, :string
  end
end
