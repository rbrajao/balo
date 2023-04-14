require "application_system_test_case"

class ClashesTest < ApplicationSystemTestCase
  setup do
    @clash = clashes(:one)
  end

  test "visiting the index" do
    visit clashes_url
    assert_selector "h1", text: "Clashes"
  end

  test "should create clash" do
    visit clashes_url
    click_on "New clash"

    fill_in "Score home", with: @clash.score_home
    fill_in "Score visit", with: @clash.score_visit
    fill_in "Status", with: @clash.status
    click_on "Create Clash"

    assert_text "Clash was successfully created"
    click_on "Back"
  end

  test "should update Clash" do
    visit clash_url(@clash)
    click_on "Edit this clash", match: :first

    fill_in "Score home", with: @clash.score_home
    fill_in "Score visit", with: @clash.score_visit
    fill_in "Status", with: @clash.status
    click_on "Update Clash"

    assert_text "Clash was successfully updated"
    click_on "Back"
  end

  test "should destroy Clash" do
    visit clash_url(@clash)
    click_on "Destroy this clash", match: :first

    assert_text "Clash was successfully destroyed"
  end
end
