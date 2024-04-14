require "application_system_test_case"

class FitnessGoalsTest < ApplicationSystemTestCase
  setup do
    @fitness_goal = fitness_goals(:one)
  end

  test "visiting the index" do
    visit fitness_goals_url
    assert_selector "h1", text: "Fitness goals"
  end

  test "should create fitness goal" do
    visit fitness_goals_url
    click_on "New fitness goal"

    fill_in "Description", with: @fitness_goal.description
    fill_in "End date", with: @fitness_goal.end_date
    fill_in "Ending value", with: @fitness_goal.ending_value
    fill_in "Members", with: @fitness_goal.members_id
    fill_in "Name", with: @fitness_goal.name
    fill_in "Start date", with: @fitness_goal.start_date
    fill_in "Starting value", with: @fitness_goal.starting_value
    click_on "Create Fitness goal"

    assert_text "Fitness goal was successfully created"
    click_on "Back"
  end

  test "should update Fitness goal" do
    visit fitness_goal_url(@fitness_goal)
    click_on "Edit this fitness goal", match: :first

    fill_in "Description", with: @fitness_goal.description
    fill_in "End date", with: @fitness_goal.end_date
    fill_in "Ending value", with: @fitness_goal.ending_value
    fill_in "Members", with: @fitness_goal.members_id
    fill_in "Name", with: @fitness_goal.name
    fill_in "Start date", with: @fitness_goal.start_date
    fill_in "Starting value", with: @fitness_goal.starting_value
    click_on "Update Fitness goal"

    assert_text "Fitness goal was successfully updated"
    click_on "Back"
  end

  test "should destroy Fitness goal" do
    visit fitness_goal_url(@fitness_goal)
    click_on "Destroy this fitness goal", match: :first

    assert_text "Fitness goal was successfully destroyed"
  end
end
