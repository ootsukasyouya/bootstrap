require "application_system_test_case"

class SticksTest < ApplicationSystemTestCase
  setup do
    @stick = sticks(:one)
  end

  test "visiting the index" do
    visit sticks_url
    assert_selector "h1", text: "Sticks"
  end

  test "creating a Stick" do
    visit sticks_url
    click_on "New Stick"

    fill_in "Content", with: @stick.content
    fill_in "Email", with: @stick.email
    fill_in "Name", with: @stick.name
    click_on "Create Stick"

    assert_text "Stick was successfully created"
    click_on "Back"
  end

  test "updating a Stick" do
    visit sticks_url
    click_on "Edit", match: :first

    fill_in "Content", with: @stick.content
    fill_in "Email", with: @stick.email
    fill_in "Name", with: @stick.name
    click_on "Update Stick"

    assert_text "Stick was successfully updated"
    click_on "Back"
  end

  test "destroying a Stick" do
    visit sticks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stick was successfully destroyed"
  end
end
