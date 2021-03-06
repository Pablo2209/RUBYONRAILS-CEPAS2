require "application_system_test_case"

class WinemakersTest < ApplicationSystemTestCase
  setup do
    @winemaker = winemakers(:one)
  end

  test "visiting the index" do
    visit winemakers_url
    assert_selector "h1", text: "Winemakers"
  end

  test "creating a Winemaker" do
    visit winemakers_url
    click_on "New Winemaker"

    fill_in "Age", with: @winemaker.age
    fill_in "Name", with: @winemaker.name
    fill_in "Nationality", with: @winemaker.nationality
    fill_in "Work", with: @winemaker.work
    click_on "Create Winemaker"

    assert_text "Winemaker was successfully created"
    click_on "Back"
  end

  test "updating a Winemaker" do
    visit winemakers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @winemaker.age
    fill_in "Name", with: @winemaker.name
    fill_in "Nationality", with: @winemaker.nationality
    fill_in "Work", with: @winemaker.work
    click_on "Update Winemaker"

    assert_text "Winemaker was successfully updated"
    click_on "Back"
  end

  test "destroying a Winemaker" do
    visit winemakers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Winemaker was successfully destroyed"
  end
end
