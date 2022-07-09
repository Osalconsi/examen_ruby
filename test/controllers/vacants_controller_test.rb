require "test_helper"

class VacantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacant = vacants(:one)
  end

  test "should get index" do
    get vacants_url
    assert_response :success
  end

  test "should get new" do
    get new_vacant_url
    assert_response :success
  end

  test "should create vacant" do
    assert_difference('Vacant.count') do
      post vacants_url, params: { vacant: { company_id: @vacant.company_id, description: @vacant.description, end_salary: @vacant.end_salary, job: @vacant.job, modality_id: @vacant.modality_id, number_vacancies: @vacant.number_vacancies, region_id: @vacant.region_id, start_date: @vacant.start_date, start_salary: @vacant.start_salary } }
    end

    assert_redirected_to vacant_url(Vacant.last)
  end

  test "should show vacant" do
    get vacant_url(@vacant)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacant_url(@vacant)
    assert_response :success
  end

  test "should update vacant" do
    patch vacant_url(@vacant), params: { vacant: { company_id: @vacant.company_id, description: @vacant.description, end_salary: @vacant.end_salary, job: @vacant.job, modality_id: @vacant.modality_id, number_vacancies: @vacant.number_vacancies, region_id: @vacant.region_id, start_date: @vacant.start_date, start_salary: @vacant.start_salary } }
    assert_redirected_to vacant_url(@vacant)
  end

  test "should destroy vacant" do
    assert_difference('Vacant.count', -1) do
      delete vacant_url(@vacant)
    end

    assert_redirected_to vacants_url
  end
end
