require 'test_helper'

class TalksControllerTest < ActionController::TestCase
  setup do
    @talk = talks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talk" do
    assert_difference('Talk.count') do
      post :create, talk: { confirmed: @talk.confirmed, scheduled_for: @talk.scheduled_for, speaker_email: @talk.speaker_email, speaker_facebook: @talk.speaker_facebook, speaker_googleplus: @talk.speaker_googleplus, speaker_linkedin: @talk.speaker_linkedin, speaker_name: @talk.speaker_name, speaker_notes: @talk.speaker_notes, speaker_slides: @talk.speaker_slides, speaker_twitter: @talk.speaker_twitter }
    end

    assert_redirected_to talk_path(assigns(:talk))
  end

  test "should show talk" do
    get :show, id: @talk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talk
    assert_response :success
  end

  test "should update talk" do
    put :update, id: @talk, talk: { confirmed: @talk.confirmed, scheduled_for: @talk.scheduled_for, speaker_email: @talk.speaker_email, speaker_facebook: @talk.speaker_facebook, speaker_googleplus: @talk.speaker_googleplus, speaker_linkedin: @talk.speaker_linkedin, speaker_name: @talk.speaker_name, speaker_notes: @talk.speaker_notes, speaker_slides: @talk.speaker_slides, speaker_twitter: @talk.speaker_twitter }
    assert_redirected_to talk_path(assigns(:talk))
  end

  test "should destroy talk" do
    assert_difference('Talk.count', -1) do
      delete :destroy, id: @talk
    end

    assert_redirected_to talks_path
  end
end
