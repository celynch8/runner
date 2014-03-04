require 'test_helper'

class RunCardsControllerTest < ActionController::TestCase
  setup do
    @run_card = run_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:run_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create run_card" do
    assert_difference('RunCard.count') do
      post :create, run_card: { day: @run_card.day, distance: @run_card.distance, pace: @run_card.pace, target_distance: @run_card.target_distance, target_race: @run_card.target_race, time: @run_card.time, type: @run_card.type }
    end

    assert_redirected_to run_card_path(assigns(:run_card))
  end

  test "should show run_card" do
    get :show, id: @run_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @run_card
    assert_response :success
  end

  test "should update run_card" do
    patch :update, id: @run_card, run_card: { day: @run_card.day, distance: @run_card.distance, pace: @run_card.pace, target_distance: @run_card.target_distance, target_race: @run_card.target_race, time: @run_card.time, type: @run_card.type }
    assert_redirected_to run_card_path(assigns(:run_card))
  end

  test "should destroy run_card" do
    assert_difference('RunCard.count', -1) do
      delete :destroy, id: @run_card
    end

    assert_redirected_to run_cards_path
  end
end
