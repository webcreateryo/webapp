require "application_system_test_case"

class TOdosTest < ApplicationSystemTestCase
  setup do
    @t_odo = t_odos(:one)
  end

  test "visiting the index" do
    visit t_odos_url
    assert_selector "h1", text: "T Odos"
  end

  test "creating a T odo" do
    visit t_odos_url
    click_on "New T Odo"

    fill_in "Contents", with: @t_odo.contents
    fill_in "Title", with: @t_odo.title
    click_on "Create T odo"

    assert_text "T odo was successfully created"
    click_on "Back"
  end

  test "updating a T odo" do
    visit t_odos_url
    click_on "Edit", match: :first

    fill_in "Contents", with: @t_odo.contents
    fill_in "Title", with: @t_odo.title
    click_on "Update T odo"

    assert_text "T odo was successfully updated"
    click_on "Back"
  end

  test "destroying a T odo" do
    visit t_odos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "T odo was successfully destroyed"
  end
end
