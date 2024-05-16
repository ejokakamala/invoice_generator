class CreateInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :invoices do |t|
      t.string :name_of_business
      t.integer :postal_box
      t.string :location
      t.integer :phone
      t.string :name_of_invoice_generator
      t.text :address_of_invoice_generator
      t.integer :invoice_no
      t.date :invoice_date
      t.text :note

      t.timestamps
    end
  end
end
