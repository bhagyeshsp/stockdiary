require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "should create transaction" do
    visit transactions_url
    click_on "New transaction"

    fill_in "Buy sale", with: @transaction.buy_sale
    fill_in "Company", with: @transaction.company_id
    fill_in "Date", with: @transaction.date
    fill_in "Final verdict", with: @transaction.final_verdict
    fill_in "Price per unit", with: @transaction.price_per_unit
    fill_in "Purchase price", with: @transaction.purchase_price
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Reason", with: @transaction.reason
    fill_in "Total earned", with: @transaction.total_earned
    fill_in "Total spent", with: @transaction.total_spent
    fill_in "Transaction fees", with: @transaction.transaction_fees
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "should update Transaction" do
    visit transaction_url(@transaction)
    click_on "Edit this transaction", match: :first

    fill_in "Buy sale", with: @transaction.buy_sale
    fill_in "Company", with: @transaction.company_id
    fill_in "Date", with: @transaction.date
    fill_in "Final verdict", with: @transaction.final_verdict
    fill_in "Price per unit", with: @transaction.price_per_unit
    fill_in "Purchase price", with: @transaction.purchase_price
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Reason", with: @transaction.reason
    fill_in "Total earned", with: @transaction.total_earned
    fill_in "Total spent", with: @transaction.total_spent
    fill_in "Transaction fees", with: @transaction.transaction_fees
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction" do
    visit transaction_url(@transaction)
    click_on "Destroy this transaction", match: :first

    assert_text "Transaction was successfully destroyed"
  end
end
