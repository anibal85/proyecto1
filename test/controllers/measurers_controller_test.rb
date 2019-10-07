require 'test_helper'

class MeasurersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurer = measurers(:one)
  end

  test "should get index" do
    get measurers_url
    assert_response :success
  end

  test "should get new" do
    get new_measurer_url
    assert_response :success
  end

  test "should create measurer" do
    assert_difference('Measurer.count') do
      post measurers_url, params: { measurer: { description: @measurer.description, id_measure: @measurer.id_measure, name: @measurer.name, umbrail: @measurer.umbrail, uni: @measurer.uni } }
    end

    assert_redirected_to measurer_url(Measurer.last)
  end

  test "should show measurer" do
    get measurer_url(@measurer)
    assert_response :success
  end

  test "should get edit" do
    get edit_measurer_url(@measurer)
    assert_response :success
  end

  test "should update measurer" do
    patch measurer_url(@measurer), params: { measurer: { description: @measurer.description, id_measure: @measurer.id_measure, name: @measurer.name, umbrail: @measurer.umbrail, uni: @measurer.uni } }
    assert_redirected_to measurer_url(@measurer)
  end

  test "should destroy measurer" do
    assert_difference('Measurer.count', -1) do
      delete measurer_url(@measurer)
    end

    assert_redirected_to measurers_url
  end
end
