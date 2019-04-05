require "application_system_test_case"

class CasetesTest < ApplicationSystemTestCase
  setup do
    @casete = casetes(:one)
  end

  test "visiting the index" do
    visit casetes_url
    assert_selector "h1", text: "Casetes"
  end

  test "creating a Casete" do
    visit casetes_url
    click_on "New Casete"

    fill_in "Formato", with: @casete.formato
    fill_in "Pelicula", with: @casete.pelicula_id
    click_on "Create Casete"

    assert_text "Casete was successfully created"
    click_on "Back"
  end

  test "updating a Casete" do
    visit casetes_url
    click_on "Edit", match: :first

    fill_in "Formato", with: @casete.formato
    fill_in "Pelicula", with: @casete.pelicula_id
    click_on "Update Casete"

    assert_text "Casete was successfully updated"
    click_on "Back"
  end

  test "destroying a Casete" do
    visit casetes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Casete was successfully destroyed"
  end
end
