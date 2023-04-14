require "test_helper"

class ClashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clash = clashes(:one)
  end

  test "should get index" do
    get clashes_url
    assert_response :success
  end

  test "should get new" do
    get new_clash_url
    assert_response :success
  end

  test "should create clash" do
    assert_difference("Clash.count") do
      post clashes_url, params: { clash: { score_home: @clash.score_home, score_visit: @clash.score_visit, status: @clash.status } }
    end

    assert_redirected_to clash_url(Clash.last)
  end

  test "should show clash" do
    get clash_url(@clash)
    assert_response :success
  end

  test "should get edit" do
    get edit_clash_url(@clash)
    assert_response :success
  end

  test "should update clash" do
    patch clash_url(@clash), params: { clash: { score_home: @clash.score_home, score_visit: @clash.score_visit, status: @clash.status } }
    assert_redirected_to clash_url(@clash)
  end

  test "should destroy clash" do
    assert_difference("Clash.count", -1) do
      delete clash_url(@clash)
    end

    assert_redirected_to clashes_url
  end
end
