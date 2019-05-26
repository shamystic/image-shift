require 'test_helper'

class ComparisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comparison = comparisons(:one)
  end

  test "should get index" do
    get comparisons_url
    assert_response :success
  end

  test "should get new" do
    get new_comparison_url
    assert_response :success
  end

  test "should create comparison" do
    assert_difference('Comparison.count') do
      post comparisons_url, params: { comparison: { description: @comparison.description, title: @comparison.title } }
    end

    assert_redirected_to comparison_url(Comparison.last)
  end

  test "should show comparison" do
    get comparison_url(@comparison)
    assert_response :success
  end

  test "should get edit" do
    get edit_comparison_url(@comparison)
    assert_response :success
  end

  test "should update comparison" do
    patch comparison_url(@comparison), params: { comparison: { description: @comparison.description, title: @comparison.title } }
    assert_redirected_to comparison_url(@comparison)
  end

  test "should destroy comparison" do
    assert_difference('Comparison.count', -1) do
      delete comparison_url(@comparison)
    end

    assert_redirected_to comparisons_url
  end
end
