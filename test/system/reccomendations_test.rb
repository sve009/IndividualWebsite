require "application_system_test_case"

class ReccomendationsTest < ApplicationSystemTestCase
  setup do
    @reccomendation = reccomendations(:one)
  end

  test "visiting the index" do
    visit reccomendations_url
    assert_selector "h1", text: "Reccomendations"
  end

  test "creating a Reccomendation" do
    visit reccomendations_url
    click_on "New Reccomendation"

    fill_in "Creator", with: @reccomendation.creator
    fill_in "Description", with: @reccomendation.description
    fill_in "Media", with: @reccomendation.media
    fill_in "Title", with: @reccomendation.title
    click_on "Create Reccomendation"

    assert_text "Reccomendation was successfully created"
    click_on "Back"
  end

  test "updating a Reccomendation" do
    visit reccomendations_url
    click_on "Edit", match: :first

    fill_in "Creator", with: @reccomendation.creator
    fill_in "Description", with: @reccomendation.description
    fill_in "Media", with: @reccomendation.media
    fill_in "Title", with: @reccomendation.title
    click_on "Update Reccomendation"

    assert_text "Reccomendation was successfully updated"
    click_on "Back"
  end

  test "destroying a Reccomendation" do
    visit reccomendations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reccomendation was successfully destroyed"
  end
end
