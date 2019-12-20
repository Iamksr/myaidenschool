require "application_system_test_case"

class MystreamsTest < ApplicationSystemTestCase
  setup do
    @mystream = mystreams(:one)
  end

  test "visiting the index" do
    visit mystreams_url
    assert_selector "h1", text: "Mystreams"
  end

  test "creating a Mystream" do
    visit mystreams_url
    click_on "New Mystream"

    fill_in "Dept", with: @mystream.dept
    fill_in "Name", with: @mystream.name
    click_on "Create Mystream"

    assert_text "Mystream was successfully created"
    click_on "Back"
  end

  test "updating a Mystream" do
    visit mystreams_url
    click_on "Edit", match: :first

    fill_in "Dept", with: @mystream.dept
    fill_in "Name", with: @mystream.name
    click_on "Update Mystream"

    assert_text "Mystream was successfully updated"
    click_on "Back"
  end

  test "destroying a Mystream" do
    visit mystreams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mystream was successfully destroyed"
  end
end
