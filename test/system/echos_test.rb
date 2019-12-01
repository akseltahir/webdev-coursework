require "application_system_test_case"

class EchosTest < ApplicationSystemTestCase
  setup do
    @echo = echos(:one)
  end

  test "visiting the index" do
    visit echos_url
    assert_selector "h1", text: "Echos"
  end

  test "creating a Echo" do
    visit echos_url
    click_on "New Echo"

    fill_in "Content", with: @echo.content
    fill_in "Title", with: @echo.title
    click_on "Create Echo"

    assert_text "Echo was successfully created"
    click_on "Back"
  end

  test "updating a Echo" do
    visit echos_url
    click_on "Edit", match: :first

    fill_in "Content", with: @echo.content
    fill_in "Title", with: @echo.title
    click_on "Update Echo"

    assert_text "Echo was successfully updated"
    click_on "Back"
  end

  test "destroying a Echo" do
    visit echos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Echo was successfully destroyed"
  end
end
