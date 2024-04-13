require "test_helper"

class HealthMetricsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_metric = health_metrics(:one)
  end

  test "should get index" do
    get health_metrics_url
    assert_response :success
  end

  test "should get new" do
    get new_health_metric_url
    assert_response :success
  end

  test "should create health_metric" do
    assert_difference("HealthMetric.count") do
      post health_metrics_url, params: { health_metric: { members_id: @health_metric.members_id, name: @health_metric.name, value: @health_metric.value } }
    end

    assert_redirected_to health_metric_url(HealthMetric.last)
  end

  test "should show health_metric" do
    get health_metric_url(@health_metric)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_metric_url(@health_metric)
    assert_response :success
  end

  test "should update health_metric" do
    patch health_metric_url(@health_metric), params: { health_metric: { members_id: @health_metric.members_id, name: @health_metric.name, value: @health_metric.value } }
    assert_redirected_to health_metric_url(@health_metric)
  end

  test "should destroy health_metric" do
    assert_difference("HealthMetric.count", -1) do
      delete health_metric_url(@health_metric)
    end

    assert_redirected_to health_metrics_url
  end
end
