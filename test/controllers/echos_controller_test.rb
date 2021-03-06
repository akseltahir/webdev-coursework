require 'test_helper'

class EchosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @echo = echos(:one)
  end

  test "should get index" do
    get echos_url
    assert_response :found
  end

  test "should get new" do
    get new_echo_url
    assert_response :found
  end

  test "should create echo" do
    assert_difference('Echo.count') do
      post echos_url, params: { echo: { content: @echo.content, title: @echo.title} }
    end

    assert_redirected_to echo_url(Echo.last)
  end

  test "should show echo" do
    get echo_url(@echo)
    assert_response :success
  end

  test "should get edit" do
    get edit_echo_url(@echo)
    assert_response :found
  end

  test "should update echo" do
    patch echo_url(@echo), params: { echo: { content: @echo.content, title: @echo.title } }
    assert_redirected_to sign_in
  end

  test "should destroy echo" do
    assert_difference('Echo.count', -1) do
      delete echo_url(@echo)
    end

    assert_redirected_to sign_in
  end
end
