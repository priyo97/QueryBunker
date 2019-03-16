require 'test_helper'

class QasControllerTest < ActionController::TestCase
  setup do
    @qa = qas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qa" do
    assert_difference('Qa.count') do
      post :create, qa: { answer: @qa.answer, questions: @qa.questions }
    end

    assert_redirected_to qa_path(assigns(:qa))
  end

  test "should show qa" do
    get :show, id: @qa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qa
    assert_response :success
  end

  test "should update qa" do
    patch :update, id: @qa, qa: { answer: @qa.answer, questions: @qa.questions }
    assert_redirected_to qa_path(assigns(:qa))
  end

  test "should destroy qa" do
    assert_difference('Qa.count', -1) do
      delete :destroy, id: @qa
    end

    assert_redirected_to qas_path
  end
end
