require "application_system_test_case"

class DivisionUsersTest < ApplicationSystemTestCase
  setup do
    @division_user = division_users(:one)
  end

  test "visiting the index" do
    visit division_users_url
    assert_selector "h1", text: "Division users"
  end

  test "should create division user" do
    visit division_users_url
    click_on "New division user"

    fill_in "Draws", with: @division_user.draws
    fill_in "Exact scores", with: @division_user.exact_scores
    fill_in "Goal concededs", with: @division_user.goal_concededs
    fill_in "Goal scoredes", with: @division_user.goal_scoredes
    fill_in "Loses", with: @division_user.loses
    fill_in "Points", with: @division_user.points
    fill_in "Position", with: @division_user.position
    fill_in "Position previous", with: @division_user.position_previous
    fill_in "Victorys", with: @division_user.victorys
    click_on "Create Division user"

    assert_text "Division user was successfully created"
    click_on "Back"
  end

  test "should update Division user" do
    visit division_user_url(@division_user)
    click_on "Edit this division user", match: :first

    fill_in "Draws", with: @division_user.draws
    fill_in "Exact scores", with: @division_user.exact_scores
    fill_in "Goal concededs", with: @division_user.goal_concededs
    fill_in "Goal scoredes", with: @division_user.goal_scoredes
    fill_in "Loses", with: @division_user.loses
    fill_in "Points", with: @division_user.points
    fill_in "Position", with: @division_user.position
    fill_in "Position previous", with: @division_user.position_previous
    fill_in "Victorys", with: @division_user.victorys
    click_on "Update Division user"

    assert_text "Division user was successfully updated"
    click_on "Back"
  end

  test "should destroy Division user" do
    visit division_user_url(@division_user)
    click_on "Destroy this division user", match: :first

    assert_text "Division user was successfully destroyed"
  end
end
