class AddColumnIva < ActiveRecord::Migration[5.1]
  def change
    add_column :Clients, :iva, :integer
  end
end
