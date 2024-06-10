require "test_helper"

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_url
    assert_response :success
  end

  test "should create transaction" do
    assert_difference("Transaction.count") do
      post transactions_url, params: { transaction: { buy_sale: @transaction.buy_sale, company_id: @transaction.company_id, date: @transaction.date, final_verdict: @transaction.final_verdict, price_per_unit: @transaction.price_per_unit, purchase_price: @transaction.purchase_price, quantity: @transaction.quantity, reason: @transaction.reason, total_earned: @transaction.total_earned, total_spent: @transaction.total_spent, transaction_fees: @transaction.transaction_fees } }
    end

    assert_redirected_to transaction_url(Transaction.last)
  end

  test "should show transaction" do
    get transaction_url(@transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_url(@transaction)
    assert_response :success
  end

  test "should update transaction" do
    patch transaction_url(@transaction), params: { transaction: { buy_sale: @transaction.buy_sale, company_id: @transaction.company_id, date: @transaction.date, final_verdict: @transaction.final_verdict, price_per_unit: @transaction.price_per_unit, purchase_price: @transaction.purchase_price, quantity: @transaction.quantity, reason: @transaction.reason, total_earned: @transaction.total_earned, total_spent: @transaction.total_spent, transaction_fees: @transaction.transaction_fees } }
    assert_redirected_to transaction_url(@transaction)
  end

  test "should destroy transaction" do
    assert_difference("Transaction.count", -1) do
      delete transaction_url(@transaction)
    end

    assert_redirected_to transactions_url
  end
end
