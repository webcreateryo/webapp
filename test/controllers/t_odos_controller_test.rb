require 'test_helper'

class TOdosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_odo = t_odos(:one)
  end

  test "should get index" do
    get t_odos_url
    assert_response :success
  end

  test "should get new" do
    get new_t_odo_url
    assert_response :success
  end

  test "should create t_odo" do
    assert_difference('TOdo.count') do
      post t_odos_url, params: { t_odo: { contents: @t_odo.contents, title: @t_odo.title } }
    end

    assert_redirected_to t_odo_url(TOdo.last)
  end

  test "should show t_odo" do
    get t_odo_url(@t_odo)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_odo_url(@t_odo)
    assert_response :success
  end

  test "should update t_odo" do
    patch t_odo_url(@t_odo), params: { t_odo: { contents: @t_odo.contents, title: @t_odo.title } }
    assert_redirected_to t_odo_url(@t_odo)
  end

  test "should destroy t_odo" do
    assert_difference('TOdo.count', -1) do
      delete t_odo_url(@t_odo)
    end

    assert_redirected_to t_odos_url
  end
end
