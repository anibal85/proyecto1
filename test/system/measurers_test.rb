require "application_system_test_case"

class MeasurersTest < ApplicationSystemTestCase
  setup do
    @measurer = measurers(:one)
  end

  test "visiting the index" do
    visit measurers_url
    assert_selector "h1", text: "Measurers"
  end

  test "creating a Measurer" do
    visit measurers_url
    click_on "New Measurer"

    fill_in "Description", with: @measurer.description
    fill_in "Id measure", with: @measurer.id_measure
    fill_in "Name", with: @measurer.name
    fill_in "Umbrail", with: @measurer.umbrail
    fill_in "Uni", with: @measurer.uni
    click_on "Create Measurer"

    assert_text "Measurer was successfully created"
    click_on "Back"
  end

  test "updating a Measurer" do
    visit measurers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @measurer.description
    fill_in "Id measure", with: @measurer.id_measure
    fill_in "Name", with: @measurer.name
    fill_in "Umbrail", with: @measurer.umbrail
    fill_in "Uni", with: @measurer.uni
    click_on "Update Measurer"

    assert_text "Measurer was successfully updated"
    click_on "Back"
  end

  test "destroying a Measurer" do
    visit measurers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measurer was successfully destroyed"
  end
end
