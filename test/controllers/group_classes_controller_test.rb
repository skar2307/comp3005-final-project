require "test_helper"

class GroupClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_class = group_classes(:one)
  end

  test "should get index" do
    get group_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_group_class_url
    assert_response :success
  end

  test "should create group_class" do
    assert_difference("GroupClass.count") do
      post group_classes_url, params: { group_class: { description: @group_class.description, end_time: @group_class.end_time, is_recurring: @group_class.is_recurring, name: @group_class.name, start_time: @group_class.start_time, trainers_id: @group_class.trainers_id } }
    end

    assert_redirected_to group_class_url(GroupClass.last)
  end

  test "should show group_class" do
    get group_class_url(@group_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_class_url(@group_class)
    assert_response :success
  end

  test "should update group_class" do
    patch group_class_url(@group_class), params: { group_class: { description: @group_class.description, end_time: @group_class.end_time, is_recurring: @group_class.is_recurring, name: @group_class.name, start_time: @group_class.start_time, trainers_id: @group_class.trainers_id } }
    assert_redirected_to group_class_url(@group_class)
  end

  test "should destroy group_class" do
    assert_difference("GroupClass.count", -1) do
      delete group_class_url(@group_class)
    end

    assert_redirected_to group_classes_url
  end
end
