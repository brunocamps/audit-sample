require "application_system_test_case"

class CompanyAreasTest < ApplicationSystemTestCase
  setup do
    @company_area = company_areas(:one)
  end

  test "visiting the index" do
    visit company_areas_url
    assert_selector "h1", text: "Company areas"
  end

  test "should create company area" do
    visit company_areas_url
    click_on "New company area"

    fill_in "Name", with: @company_area.name
    click_on "Create Company area"

    assert_text "Company area was successfully created"
    click_on "Back"
  end

  test "should update Company area" do
    visit company_area_url(@company_area)
    click_on "Edit this company area", match: :first

    fill_in "Name", with: @company_area.name
    click_on "Update Company area"

    assert_text "Company area was successfully updated"
    click_on "Back"
  end

  test "should destroy Company area" do
    visit company_area_url(@company_area)
    click_on "Destroy this company area", match: :first

    assert_text "Company area was successfully destroyed"
  end
end
