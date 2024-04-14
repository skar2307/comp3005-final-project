require "test_helper"

class PersonalTrainingSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_training_session = personal_training_sessions(:one)
  end

  test "should get index" do
    get personal_training_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_training_session_url
    assert_response :success
  end

  test "should create personal_training_session" do
    assert_difference("PersonalTrainingSession.count") do
      post personal_training_sessions_url, params: { personal_training_session: { description: @personal_training_session.description, end_time: @personal_training_session.end_time, member_id_id: @personal_training_session.member_id_id, name: @personal_training_session.name, start_time: @personal_training_session.start_time, trainer_id_id: @personal_training_session.trainer_id_id } }
    end

    assert_redirected_to personal_training_session_url(PersonalTrainingSession.last)
  end

  test "should show personal_training_session" do
    get personal_training_session_url(@personal_training_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_training_session_url(@personal_training_session)
    assert_response :success
  end

  test "should update personal_training_session" do
    patch personal_training_session_url(@personal_training_session), params: { personal_training_session: { description: @personal_training_session.description, end_time: @personal_training_session.end_time, member_id_id: @personal_training_session.member_id_id, name: @personal_training_session.name, start_time: @personal_training_session.start_time, trainer_id_id: @personal_training_session.trainer_id_id } }
    assert_redirected_to personal_training_session_url(@personal_training_session)
  end

  test "should destroy personal_training_session" do
    assert_difference("PersonalTrainingSession.count", -1) do
      delete personal_training_session_url(@personal_training_session)
    end

    assert_redirected_to personal_training_sessions_url
  end
end
