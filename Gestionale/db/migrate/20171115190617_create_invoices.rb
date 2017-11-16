class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :hours_standard
      t.float :rate_hour_standard
      t.integer :hours_extra
      t.float :rate_hour_extra
      t.float :total_amount
      t.datetime :date_of_issue
      t.datetime :recessed_date
      t.float :penalty_clause
      t.references :client, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
