require 'test_helper'

class ImagemsControllerTest < ActionController::TestCase
  setup do
    @imagem = imagems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagem" do
    assert_difference('Imagem.count') do
      post :create, imagem: @imagem.attributes
    end

    assert_redirected_to imagem_path(assigns(:imagem))
  end

  test "should show imagem" do
    get :show, id: @imagem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagem.to_param
    assert_response :success
  end

  test "should update imagem" do
    put :update, id: @imagem.to_param, imagem: @imagem.attributes
    assert_redirected_to imagem_path(assigns(:imagem))
  end

  test "should destroy imagem" do
    assert_difference('Imagem.count', -1) do
      delete :destroy, id: @imagem.to_param
    end

    assert_redirected_to imagems_path
  end
end
