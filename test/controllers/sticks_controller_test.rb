require "test_helper"

class SticksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stick = sticks(:one)
  end

  test "should get index" do
    get sticks_url
    assert_response :success
  end

  test "should get new" do
    get new_stick_url
    assert_response :success
  end

  test "should create stick" do
    assert_difference('Stick.count') do
      post sticks_url, params: { stick: { content: @stick.content, email: @stick.email, name: @stick.name } }
    end

    assert_redirected_to stick_url(Stick.last)
  end

  test "should show stick" do
    get stick_url(@stick)
    assert_response :success
  end

  test "should get edit" do
    get edit_stick_url(@stick)
    assert_response :success
  end

  test "should update stick" do
    patch stick_url(@stick), params: { stick: { content: @stick.content, email: @stick.email, name: @stick.name } }
    assert_redirected_to stick_url(@stick)
  end

  test "should destroy stick" do
    assert_difference('Stick.count', -1) do
      delete stick_url(@stick)
    end

    assert_redirected_to sticks_url
  end
end
