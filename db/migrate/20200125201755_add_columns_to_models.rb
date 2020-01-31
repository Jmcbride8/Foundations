class AddColumnsToModels < ActiveRecord::Migration[5.2]
  def change
    add_column :models, :street_address, :string
    add_column :models, :appartment_number, :string
    add_column :models, :city, :string
    add_column :models, :state, :string
    add_column :models, :postal_code, :string
    add_column :models, :country, :string  
  end
end
