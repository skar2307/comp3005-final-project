require "application_system_test_case"

class HealthMetricsTest < ApplicationSystemTestCase
  setup do
    @health_metric = health_metrics(:one)
  end

  test "visiting the index" do
    visit health_metrics_url
    assert_selector "h1", text: "Health metrics"
  end

  test "should create health metric" do
    visit health_metrics_url
    click_on "New health metric"

    fill_in "Members", with: @health_metric.members_id
    fill_in "Name", with: @health_metric.name
    fill_in "Value", with: @health_metric.value
    click_on "Create Health metric"

    assert_text "Health metric was successfully created"
    click_on "Back"
  end

  test "should update Health metric" do
    visit health_metric_url(@health_metric)
    click_on "Edit this health metric", match: :first

    fill_in "Members", with: @health_metric.members_id
    fill_in "Name", with: @health_metric.name
    fill_in "Value", with: @health_metric.value
    click_on "Update Health metric"

    assert_text "Health metric was successfully updated"
    click_on "Back"
  end

  test "should destroy Health metric" do
    visit health_metric_url(@health_metric)
    click_on "Destroy this health metric", match: :first

    assert_text "Health metric was successfully destroyed"
  end
end
