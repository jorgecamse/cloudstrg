require 'test_helper'

module Cloudstrg
  class CloudstrgpluginsControllerTest < ActionController::TestCase
    setup do
      @cloudstrgplugin = cloudstrgplugins(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:cloudstrgplugins)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create cloudstrgplugin" do
      assert_difference('Cloudstrgplugin.count') do
        post :create, cloudstrgplugin: { plugin_name: @cloudstrgplugin.plugin_name, version: @cloudstrgplugin.version }
      end
  
      assert_redirected_to cloudstrgplugin_path(assigns(:cloudstrgplugin))
    end
  
    test "should show cloudstrgplugin" do
      get :show, id: @cloudstrgplugin
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @cloudstrgplugin
      assert_response :success
    end
  
    test "should update cloudstrgplugin" do
      put :update, id: @cloudstrgplugin, cloudstrgplugin: { plugin_name: @cloudstrgplugin.plugin_name, version: @cloudstrgplugin.version }
      assert_redirected_to cloudstrgplugin_path(assigns(:cloudstrgplugin))
    end
  
    test "should destroy cloudstrgplugin" do
      assert_difference('Cloudstrgplugin.count', -1) do
        delete :destroy, id: @cloudstrgplugin
      end
  
      assert_redirected_to cloudstrgplugins_path
    end
  end
end
