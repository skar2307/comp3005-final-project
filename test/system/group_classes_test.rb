require "application_system_test_case"

class GroupClassesTest < ApplicationSystemTestCase
  setup do
    @group_class = group_classes(:one)
  end

  test "visiting the index" do
    visit group_classes_url
    assert_selector "h1", text: "Group classes"
  end

  test "should create group class" do
    visit group_classes_url
    click_on "New group class"

    fill_in "Description", with: @group_class.description
    fill_in "End time", with: @group_class.end_time
    check "Is recurring" if @group_class.is_recurring
    fill_in "Name", with: @group_class.name
    fill_in "Start time", with: @group_class.start_time
    fill_in "Trainers", with: @group_class.trainers_id
    click_on "Create Group class"

    assert_text "Group class was successfully created"
    click_on "Back"
  end

  test "should update Group class" do
    visit group_class_url(@group_class)
    click_on "Edit this group class", match: :first

    fill_in "Description", with: @group_class.description
    fill_in "End time", with: @group_class.end_time
    check "Is recurring" if @group_class.is_recurring
    fill_in "Name", with: @group_class.name
    fill_in "Start time", with: @group_class.start_time
    fill_in "Trainers", with: @group_class.trainers_id
    click_on "Update Group class"

    assert_text "Group class was successfully updated"
    click_on "Back"
  end

  test "should destroy Group class" do
    visit group_class_url(@group_class)
    click_on "Destroy this group class", match: :first

    assert_text "Group class was successfully destroyed"
  end
end
