require "test_helper"

class FitnessGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fitness_goal = fitness_goals(:one)
  end

  test "should get index" do
    get fitness_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_fitness_goal_url
    assert_response :success
  end

  test "should create fitness_goal" do
    assert_difference("FitnessGoal.count") do
      post fitness_goals_url, params: { fitness_goal: { description: @fitness_goal.description, end_date: @fitness_goal.end_date, ending_value: @fitness_goal.ending_value, members_id: @fitness_goal.members_id, name: @fitness_goal.name, start_date: @fitness_goal.start_date, starting_value: @fitness_goal.starting_value } }
    end

    assert_redirected_to fitness_goal_url(FitnessGoal.last)
  end

  test "should show fitness_goal" do
    get fitness_goal_url(@fitness_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_fitness_goal_url(@fitness_goal)
    assert_response :success
  end

  test "should update fitness_goal" do
    patch fitness_goal_url(@fitness_goal), params: { fitness_goal: { description: @fitness_goal.description, end_date: @fitness_goal.end_date, ending_value: @fitness_goal.ending_value, members_id: @fitness_goal.members_id, name: @fitness_goal.name, start_date: @fitness_goal.start_date, starting_value: @fitness_goal.starting_value } }
    assert_redirected_to fitness_goal_url(@fitness_goal)
  end

  test "should destroy fitness_goal" do
    assert_difference("FitnessGoal.count", -1) do
      delete fitness_goal_url(@fitness_goal)
    end

    assert_redirected_to fitness_goals_url
  end
end
