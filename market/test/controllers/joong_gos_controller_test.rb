require 'test_helper'

class JoongGosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joong_go = joong_gos(:one)
  end

  test "should get index" do
    get joong_gos_url
    assert_response :success
  end

  test "should get new" do
    get new_joong_go_url
    assert_response :success
  end

  test "should create joong_go" do
    assert_difference('JoongGo.count') do
      post joong_gos_url, params: { joong_go: { 가격: @joong_go.가격, 물건: @joong_go.물건, 상태: @joong_go.상태, 팔기: @joong_go.팔기 } }
    end

    assert_redirected_to joong_go_url(JoongGo.last)
  end

  test "should show joong_go" do
    get joong_go_url(@joong_go)
    assert_response :success
  end

  test "should get edit" do
    get edit_joong_go_url(@joong_go)
    assert_response :success
  end

  test "should update joong_go" do
    patch joong_go_url(@joong_go), params: { joong_go: { 가격: @joong_go.가격, 물건: @joong_go.물건, 상태: @joong_go.상태, 팔기: @joong_go.팔기 } }
    assert_redirected_to joong_go_url(@joong_go)
  end

  test "should destroy joong_go" do
    assert_difference('JoongGo.count', -1) do
      delete joong_go_url(@joong_go)
    end

    assert_redirected_to joong_gos_url
  end
end
