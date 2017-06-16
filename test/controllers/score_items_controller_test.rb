require 'test_helper'

class ScoreItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score_item = score_items(:one)
  end

  test "should get index" do
    get score_items_url
    assert_response :success
  end

  test "should get new" do
    get new_score_item_url
    assert_response :success
  end

  test "should create score_item" do
    assert_difference('ScoreItem.count') do
      post score_items_url, params: { score_item: { name: @score_item.name, number: @score_item.number, score: @score_item.score } }
    end

    assert_redirected_to score_item_url(ScoreItem.last)
  end

  test "should show score_item" do
    get score_item_url(@score_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_score_item_url(@score_item)
    assert_response :success
  end

  test "should update score_item" do
    patch score_item_url(@score_item), params: { score_item: { name: @score_item.name, number: @score_item.number, score: @score_item.score } }
    assert_redirected_to score_item_url(@score_item)
  end

  test "should destroy score_item" do
    assert_difference('ScoreItem.count', -1) do
      delete score_item_url(@score_item)
    end

    assert_redirected_to score_items_url
  end
end
