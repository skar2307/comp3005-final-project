require "application_system_test_case"

class PersonalTrainingSessionsTest < ApplicationSystemTestCase
  setup do
    @personal_training_session = personal_training_sessions(:one)
  end

  test "visiting the index" do
    visit personal_training_sessions_url
    assert_selector "h1", text: "Personal training sessions"
  end

  test "should create personal training session" do
    visit personal_training_sessions_url
    click_on "New personal training session"

    fill_in "Description", with: @personal_training_session.description
    fill_in "End time", with: @personal_training_session.end_time
    fill_in "Member id", with: @personal_training_session.member_id_id
    fill_in "Name", with: @personal_training_session.name
    fill_in "Start time", with: @personal_training_session.start_time
    fill_in "Trainer id", with: @personal_training_session.trainer_id_id
    click_on "Create Personal training session"

    assert_text "Personal training session was successfully created"
    click_on "Back"
  end

  test "should update Personal training session" do
    visit personal_training_session_url(@personal_training_session)
    click_on "Edit this personal training session", match: :first

    fill_in "Description", with: @personal_training_session.description
    fill_in "End time", with: @personal_training_session.end_time
    fill_in "Member id", with: @personal_training_session.member_id_id
    fill_in "Name", with: @personal_training_session.name
    fill_in "Start time", with: @personal_training_session.start_time
    fill_in "Trainer id", with: @personal_training_session.trainer_id_id
    click_on "Update Personal training session"

    assert_text "Personal training session was successfully updated"
    click_on "Back"
  end

  test "should destroy Personal training session" do
    visit personal_training_session_url(@personal_training_session)
    click_on "Destroy this personal training session", match: :first

    assert_text "Personal training session was successfully destroyed"
  end
end
