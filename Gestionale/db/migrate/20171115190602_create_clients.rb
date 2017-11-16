class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :business_name
      t.string :address
      t.string :email
      t.string :cf
      t.string :p_iva
      t.boolean :public_authority

      t.timestamps
    end
  end
end
