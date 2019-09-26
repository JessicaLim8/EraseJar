require "application_system_test_case"

class JarsTest < ApplicationSystemTestCase
  setup do
    @jar = jars(:one)
  end

  test "visiting the index" do
    visit jars_url
    assert_selector "h1", text: "Jars"
  end

  test "creating a Jar" do
    visit jars_url
    click_on "New Jar"

    fill_in "Type", with: @jar.type
    fill_in "User", with: @jar.user_id
    click_on "Create Jar"

    assert_text "Jar was successfully created"
    click_on "Back"
  end

  test "updating a Jar" do
    visit jars_url
    click_on "Edit", match: :first

    fill_in "Type", with: @jar.type
    fill_in "User", with: @jar.user_id
    click_on "Update Jar"

    assert_text "Jar was successfully updated"
    click_on "Back"
  end

  test "destroying a Jar" do
    visit jars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jar was successfully destroyed"
  end
end
