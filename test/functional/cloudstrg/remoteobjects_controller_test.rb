require 'test_helper'

module Cloudstrg
  class RemoteobjectsControllerTest < ActionController::TestCase
    setup do
      @remoteobject = remoteobjects(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:remoteobjects)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create remoteobject" do
      assert_difference('Remoteobject.count') do
        post :create, remoteobject: { filehash: @remoteobject.filehash, filename: @remoteobject.filename, plugin_id: @remoteobject.plugin_id, user_id: @remoteobject.user_id }
      end
  
      assert_redirected_to remoteobject_path(assigns(:remoteobject))
    end
  
    test "should show remoteobject" do
      get :show, id: @remoteobject
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @remoteobject
      assert_response :success
    end
  
    test "should update remoteobject" do
      put :update, id: @remoteobject, remoteobject: { filehash: @remoteobject.filehash, filename: @remoteobject.filename, plugin_id: @remoteobject.plugin_id, user_id: @remoteobject.user_id }
      assert_redirected_to remoteobject_path(assigns(:remoteobject))
    end
  
    test "should destroy remoteobject" do
      assert_difference('Remoteobject.count', -1) do
        delete :destroy, id: @remoteobject
      end
  
      assert_redirected_to remoteobjects_path
    end
  end
end
