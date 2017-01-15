require 'test_helper'

class KidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kid = kids(:one)
  end

  test "should get index" do
    get kids_url, as: :json
    assert_response :success
  end

  test "should create kid" do
    assert_difference('Kid.count') do
      post kids_url, params: { kid: { kredits: @kid.kredits, name: @kid.name } }, as: :json
    end

    assert_response 201
  end

  test "should show kid" do
    get kid_url(@kid), as: :json
    assert_response :success
  end

  test "should update kid" do
    patch kid_url(@kid), params: { kid: { kredits: @kid.kredits, name: @kid.name } }, as: :json
    assert_response 200
  end

  test "should destroy kid" do
    assert_difference('Kid.count', -1) do
      delete kid_url(@kid), as: :json
    end

    assert_response 204
  end
end
