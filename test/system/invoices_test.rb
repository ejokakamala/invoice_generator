require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "should create invoice" do
    visit invoices_url
    click_on "New invoice"

    fill_in "Address of invoice generator", with: @invoice.address_of_invoice_generator
    fill_in "Description", with: @invoice.description
    fill_in "Invoice date", with: @invoice.invoice_date
    fill_in "Invoice no", with: @invoice.invoice_no
    fill_in "Location", with: @invoice.location
    fill_in "Name of business", with: @invoice.name_of_business
    fill_in "Name of invoice generator", with: @invoice.name_of_invoice_generator
    fill_in "Phone", with: @invoice.phone
    fill_in "Postal box", with: @invoice.postal_box
    fill_in "Price per item", with: @invoice.price_per_item
    fill_in "Quantity", with: @invoice.quantity
    fill_in "Total price", with: @invoice.total_price
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "should update Invoice" do
    visit invoice_url(@invoice)
    click_on "Edit this invoice", match: :first

    fill_in "Address of invoice generator", with: @invoice.address_of_invoice_generator
    fill_in "Description", with: @invoice.description
    fill_in "Invoice date", with: @invoice.invoice_date
    fill_in "Invoice no", with: @invoice.invoice_no
    fill_in "Location", with: @invoice.location
    fill_in "Name of business", with: @invoice.name_of_business
    fill_in "Name of invoice generator", with: @invoice.name_of_invoice_generator
    fill_in "Phone", with: @invoice.phone
    fill_in "Postal box", with: @invoice.postal_box
    fill_in "Price per item", with: @invoice.price_per_item
    fill_in "Quantity", with: @invoice.quantity
    fill_in "Total price", with: @invoice.total_price
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "should destroy Invoice" do
    visit invoice_url(@invoice)
    click_on "Destroy this invoice", match: :first

    assert_text "Invoice was successfully destroyed"
  end
end
