require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference("Invoice.count") do
      post invoices_url, params: { invoice: { address_of_invoice_generator: @invoice.address_of_invoice_generator, description: @invoice.description, invoice_date: @invoice.invoice_date, invoice_no: @invoice.invoice_no, location: @invoice.location, name_of_business: @invoice.name_of_business, name_of_invoice_generator: @invoice.name_of_invoice_generator, phone: @invoice.phone, postal_box: @invoice.postal_box, price_per_item: @invoice.price_per_item, quantity: @invoice.quantity, total_price: @invoice.total_price } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { address_of_invoice_generator: @invoice.address_of_invoice_generator, description: @invoice.description, invoice_date: @invoice.invoice_date, invoice_no: @invoice.invoice_no, location: @invoice.location, name_of_business: @invoice.name_of_business, name_of_invoice_generator: @invoice.name_of_invoice_generator, phone: @invoice.phone, postal_box: @invoice.postal_box, price_per_item: @invoice.price_per_item, quantity: @invoice.quantity, total_price: @invoice.total_price } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference("Invoice.count", -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
