require "application_system_test_case"

class UserProcessesTest < ApplicationSystemTestCase
  setup do
    @user_process = user_processes(:one)
  end

  test "visiting the index" do
    visit user_processes_url
    assert_selector "h1", text: "User processes"
  end

  test "should create user process" do
    visit user_processes_url
    click_on "New user process"

    fill_in "Company area", with: @user_process.company_area_id
    fill_in "Evaluation", with: @user_process.evaluation
    fill_in "Name", with: @user_process.name
    fill_in "Weight", with: @user_process.weight
    click_on "Create User process"

    assert_text "User process was successfully created"
    click_on "Back"
  end

  test "should update User process" do
    visit user_process_url(@user_process)
    click_on "Edit this user process", match: :first

    fill_in "Company area", with: @user_process.company_area_id
    fill_in "Evaluation", with: @user_process.evaluation
    fill_in "Name", with: @user_process.name
    fill_in "Weight", with: @user_process.weight
    click_on "Update User process"

    assert_text "User process was successfully updated"
    click_on "Back"
  end

  test "should destroy User process" do
    visit user_process_url(@user_process)
    click_on "Destroy this user process", match: :first

    assert_text "User process was successfully destroyed"
  end
end
