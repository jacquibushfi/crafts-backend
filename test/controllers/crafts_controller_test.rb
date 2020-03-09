require 'test_helper'

class CraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @craft = crafts(:one)
  end

  test "should get index" do
    get crafts_url, as: :json
    assert_response :success
  end

  test "should create craft" do
    assert_difference('Craft.count') do
      post crafts_url, params: { craft: { name: @craft.name } }, as: :json
    end

    assert_response 201
  end

  test "should show craft" do
    get craft_url(@craft), as: :json
    assert_response :success
  end

  test "should update craft" do
    patch craft_url(@craft), params: { craft: { name: @craft.name } }, as: :json
    assert_response 200
  end

  test "should destroy craft" do
    assert_difference('Craft.count', -1) do
      delete craft_url(@craft), as: :json
    end

    assert_response 204
  end
end
