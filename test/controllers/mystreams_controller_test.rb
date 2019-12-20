require 'test_helper'

class MystreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mystream = mystreams(:one)
  end

  test "should get index" do
    get mystreams_url
    assert_response :success
  end

  test "should get new" do
    get new_mystream_url
    assert_response :success
  end

  test "should create mystream" do
    assert_difference('Mystream.count') do
      post mystreams_url, params: { mystream: { dept: @mystream.dept, name: @mystream.name } }
    end

    assert_redirected_to mystream_url(Mystream.last)
  end

  test "should show mystream" do
    get mystream_url(@mystream)
    assert_response :success
  end

  test "should get edit" do
    get edit_mystream_url(@mystream)
    assert_response :success
  end

  test "should update mystream" do
    patch mystream_url(@mystream), params: { mystream: { dept: @mystream.dept, name: @mystream.name } }
    assert_redirected_to mystream_url(@mystream)
  end

  test "should destroy mystream" do
    assert_difference('Mystream.count', -1) do
      delete mystream_url(@mystream)
    end

    assert_redirected_to mystreams_url
  end
end
