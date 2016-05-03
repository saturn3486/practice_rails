require 'test_helper'

class TichetsControllerTest < ActionController::TestCase
  setup do
    @tichet = tichets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tichets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tichet" do
    assert_difference('Tichet.count') do
      post :create, tichet: { address: @tichet.address, name: @tichet.name, price_paid: @tichet.price_paid, seat_id: @tichet.seat_id }
    end

    assert_redirected_to tichet_path(assigns(:tichet))
  end

  test "should show tichet" do
    get :show, id: @tichet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tichet
    assert_response :success
  end

  test "should update tichet" do
    patch :update, id: @tichet, tichet: { address: @tichet.address, name: @tichet.name, price_paid: @tichet.price_paid, seat_id: @tichet.seat_id }
    assert_redirected_to tichet_path(assigns(:tichet))
  end

  test "should destroy tichet" do
    assert_difference('Tichet.count', -1) do
      delete :destroy, id: @tichet
    end

    assert_redirected_to tichets_path
  end
end
