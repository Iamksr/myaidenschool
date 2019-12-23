require 'test_helper'

class DevisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devison = devisons(:one)
  end

  test "should get index" do
    get devisons_url
    assert_response :success
  end

  test "should get new" do
    get new_devison_url
    assert_response :success
  end

  test "should create devison" do
    assert_difference('Devison.count') do
      post devisons_url, params: { devison: { sec: @devison.sec } }
    end

    assert_redirected_to devison_url(Devison.last)
  end

  test "should show devison" do
    get devison_url(@devison)
    assert_response :success
  end

  test "should get edit" do
    get edit_devison_url(@devison)
    assert_response :success
  end

  test "should update devison" do
    patch devison_url(@devison), params: { devison: { sec: @devison.sec } }
    assert_redirected_to devison_url(@devison)
  end

  test "should destroy devison" do
    assert_difference('Devison.count', -1) do
      delete devison_url(@devison)
    end

    assert_redirected_to devisons_url
  end
end
