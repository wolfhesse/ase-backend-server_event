require 'test_helper'

class ServerEventsControllerTest < ActionController::TestCase
  setup do
    @server_event = server_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:server_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create server_event" do
    assert_difference('ServerEvent.count') do
      post :create, server_event: { name: @server_event.name, vakz: @server_event.vakz }
    end

    assert_redirected_to server_event_path(assigns(:server_event))
  end

  test "should show server_event" do
    get :show, id: @server_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @server_event
    assert_response :success
  end

  test "should update server_event" do
    put :update, id: @server_event, server_event: { name: @server_event.name, vakz: @server_event.vakz }
    assert_redirected_to server_event_path(assigns(:server_event))
  end

  test "should destroy server_event" do
    assert_difference('ServerEvent.count', -1) do
      delete :destroy, id: @server_event
    end

    assert_redirected_to server_events_path
  end
end
