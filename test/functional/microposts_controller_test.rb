require File.dirname(__FILE__) + '/../test_helper'

class MicropostsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:microposts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_micropost
    assert_difference('Micropost.count') do
      post :create, :micropost => { }
    end

    assert_redirected_to micropost_path(assigns(:micropost))
  end

  def test_should_show_micropost
    get :show, :id => microposts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => microposts(:one).id
    assert_response :success
  end

  def test_should_update_micropost
    put :update, :id => microposts(:one).id, :micropost => { }
    assert_redirected_to micropost_path(assigns(:micropost))
  end

  def test_should_destroy_micropost
    assert_difference('Micropost.count', -1) do
      delete :destroy, :id => microposts(:one).id
    end

    assert_redirected_to microposts_path
  end
end
