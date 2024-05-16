json.extract! invoice, :id, :name_of_business, :postal_box, :location, :phone, :name_of_invoice_generator, :address_of_invoice_generator, :invoice_no, :invoice_date, :description, :quantity, :price_per_item, :total_price, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
