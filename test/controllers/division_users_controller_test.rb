require "test_helper"

class DivisionUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @division_user = division_users(:one)
  end

  test "should get index" do
    get division_users_url
    assert_response :success
  end

  test "should get new" do
    get new_division_user_url
    assert_response :success
  end

  test "should create division_user" do
    assert_difference("DivisionUser.count") do
      post division_users_url, params: { division_user: { draws: @division_user.draws, exact_scores: @division_user.exact_scores, goal_concededs: @division_user.goal_concededs, goal_scoredes: @division_user.goal_scoredes, loses: @division_user.loses, points: @division_user.points, position: @division_user.position, position_previous: @division_user.position_previous, victorys: @division_user.victorys } }
    end

    assert_redirected_to division_user_url(DivisionUser.last)
  end

  test "should show division_user" do
    get division_user_url(@division_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_division_user_url(@division_user)
    assert_response :success
  end

  test "should update division_user" do
    patch division_user_url(@division_user), params: { division_user: { draws: @division_user.draws, exact_scores: @division_user.exact_scores, goal_concededs: @division_user.goal_concededs, goal_scoredes: @division_user.goal_scoredes, loses: @division_user.loses, points: @division_user.points, position: @division_user.position, position_previous: @division_user.position_previous, victorys: @division_user.victorys } }
    assert_redirected_to division_user_url(@division_user)
  end

  test "should destroy division_user" do
    assert_difference("DivisionUser.count", -1) do
      delete division_user_url(@division_user)
    end

    assert_redirected_to division_users_url
  end
end
