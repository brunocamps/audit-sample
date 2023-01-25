require "test_helper"

class UserProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_process = user_processes(:one)
  end

  test "should get index" do
    get user_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_user_process_url
    assert_response :success
  end

  test "should create user_process" do
    assert_difference("UserProcess.count") do
      post user_processes_url, params: { user_process: { company_area_id: @user_process.company_area_id, evaluation: @user_process.evaluation, name: @user_process.name, weight: @user_process.weight } }
    end

    assert_redirected_to user_process_url(UserProcess.last)
  end

  test "should show user_process" do
    get user_process_url(@user_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_process_url(@user_process)
    assert_response :success
  end

  test "should update user_process" do
    patch user_process_url(@user_process), params: { user_process: { company_area_id: @user_process.company_area_id, evaluation: @user_process.evaluation, name: @user_process.name, weight: @user_process.weight } }
    assert_redirected_to user_process_url(@user_process)
  end

  test "should destroy user_process" do
    assert_difference("UserProcess.count", -1) do
      delete user_process_url(@user_process)
    end

    assert_redirected_to user_processes_url
  end
end
