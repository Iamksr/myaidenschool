require "application_system_test_case"

class DevisonsTest < ApplicationSystemTestCase
  setup do
    @devison = devisons(:one)
  end

  test "visiting the index" do
    visit devisons_url
    assert_selector "h1", text: "Devisons"
  end

  test "creating a Devison" do
    visit devisons_url
    click_on "New Devison"

    fill_in "Sec", with: @devison.sec
    click_on "Create Devison"

    assert_text "Devison was successfully created"
    click_on "Back"
  end

  test "updating a Devison" do
    visit devisons_url
    click_on "Edit", match: :first

    fill_in "Sec", with: @devison.sec
    click_on "Update Devison"

    assert_text "Devison was successfully updated"
    click_on "Back"
  end

  test "destroying a Devison" do
    visit devisons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Devison was successfully destroyed"
  end
end
