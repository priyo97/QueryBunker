require 'test_helper'

class ProblemStatementsControllerTest < ActionController::TestCase
  setup do
    @problem_statement = problem_statements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:problem_statements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create problem_statement" do
    assert_difference('ProblemStatement.count') do
      post :create, problem_statement: { answer: @problem_statement.answer, question: @problem_statement.question }
    end

    assert_redirected_to problem_statement_path(assigns(:problem_statement))
  end

  test "should show problem_statement" do
    get :show, id: @problem_statement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @problem_statement
    assert_response :success
  end

  test "should update problem_statement" do
    patch :update, id: @problem_statement, problem_statement: { answer: @problem_statement.answer, question: @problem_statement.question }
    assert_redirected_to problem_statement_path(assigns(:problem_statement))
  end

  test "should destroy problem_statement" do
    assert_difference('ProblemStatement.count', -1) do
      delete :destroy, id: @problem_statement
    end

    assert_redirected_to problem_statements_path
  end
end
