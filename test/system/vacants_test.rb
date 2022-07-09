require "application_system_test_case"

class VacantsTest < ApplicationSystemTestCase
  setup do
    @vacant = vacants(:one)
  end

  test "visiting the index" do
    visit vacants_url
    assert_selector "h1", text: "Vacants"
  end

  test "creating a Vacant" do
    visit vacants_url
    click_on "New Vacant"

    fill_in "Company", with: @vacant.company_id
    fill_in "Description", with: @vacant.description
    fill_in "End salary", with: @vacant.end_salary
    fill_in "Job", with: @vacant.job
    fill_in "Modality", with: @vacant.modality_id
    fill_in "Number vacancies", with: @vacant.number_vacancies
    fill_in "Region", with: @vacant.region_id
    fill_in "Start date", with: @vacant.start_date
    fill_in "Start salary", with: @vacant.start_salary
    click_on "Create Vacant"

    assert_text "Vacant was successfully created"
    click_on "Back"
  end

  test "updating a Vacant" do
    visit vacants_url
    click_on "Edit", match: :first

    fill_in "Company", with: @vacant.company_id
    fill_in "Description", with: @vacant.description
    fill_in "End salary", with: @vacant.end_salary
    fill_in "Job", with: @vacant.job
    fill_in "Modality", with: @vacant.modality_id
    fill_in "Number vacancies", with: @vacant.number_vacancies
    fill_in "Region", with: @vacant.region_id
    fill_in "Start date", with: @vacant.start_date
    fill_in "Start salary", with: @vacant.start_salary
    click_on "Update Vacant"

    assert_text "Vacant was successfully updated"
    click_on "Back"
  end

  test "destroying a Vacant" do
    visit vacants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vacant was successfully destroyed"
  end
end
