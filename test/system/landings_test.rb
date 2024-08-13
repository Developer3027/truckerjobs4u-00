require "application_system_test_case"

class LandingsTest < ApplicationSystemTestCase
  setup do
    @landing = landings(:one)
  end

  test "visiting the index" do
    visit landings_url
    assert_selector "h1", text: "Landings"
  end

  test "should create landing" do
    visit landings_url
    click_on "New landing"

    fill_in "Content", with: @landing.content
    fill_in "Email", with: @landing.email
    fill_in "First name", with: @landing.first_name
    fill_in "Last name", with: @landing.last_name
    fill_in "Location", with: @landing.location
    fill_in "Phone", with: @landing.phone
    click_on "Create Landing"

    assert_text "Landing was successfully created"
    click_on "Back"
  end

  test "should update Landing" do
    visit landing_url(@landing)
    click_on "Edit this landing", match: :first

    fill_in "Content", with: @landing.content
    fill_in "Email", with: @landing.email
    fill_in "First name", with: @landing.first_name
    fill_in "Last name", with: @landing.last_name
    fill_in "Location", with: @landing.location
    fill_in "Phone", with: @landing.phone
    click_on "Update Landing"

    assert_text "Landing was successfully updated"
    click_on "Back"
  end

  test "should destroy Landing" do
    visit landing_url(@landing)
    click_on "Destroy this landing", match: :first

    assert_text "Landing was successfully destroyed"
  end
end
