require 'test_helper'

class EnsayosControllerTest < ActionController::TestCase
  setup do
    @ensayo = ensayos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ensayos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ensayo" do
    assert_difference('Ensayo.count') do
      post :create, ensayo: { titlo: @ensayo.titlo }
    end

    assert_redirected_to ensayo_path(assigns(:ensayo))
  end

  test "should show ensayo" do
    get :show, id: @ensayo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ensayo
    assert_response :success
  end

  test "should update ensayo" do
    patch :update, id: @ensayo, ensayo: { titlo: @ensayo.titlo }
    assert_redirected_to ensayo_path(assigns(:ensayo))
  end

  test "should destroy ensayo" do
    assert_difference('Ensayo.count', -1) do
      delete :destroy, id: @ensayo
    end

    assert_redirected_to ensayos_path
  end
end
