require 'test_helper'

class PortVesselsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @port_vessel = port_vessels(:one)
  end

  test "should get index" do
    get port_vessels_url
    assert_response :success
  end

  test "should get new" do
    get new_port_vessel_url
    assert_response :success
  end

  test "should create port_vessel" do
    assert_difference('PortVessel.count') do
      post port_vessels_url, params: { port_vessel: { last_position_updated_at: @port_vessel.last_position_updated_at, nav_status_code: @port_vessel.nav_status_code, port_id: @port_vessel.port_id, vessel_id: @port_vessel.vessel_id } }
    end

    assert_redirected_to port_vessel_url(PortVessel.last)
  end

  test "should show port_vessel" do
    get port_vessel_url(@port_vessel)
    assert_response :success
  end

  test "should get edit" do
    get edit_port_vessel_url(@port_vessel)
    assert_response :success
  end

  test "should update port_vessel" do
    patch port_vessel_url(@port_vessel), params: { port_vessel: { last_position_updated_at: @port_vessel.last_position_updated_at, nav_status_code: @port_vessel.nav_status_code, port_id: @port_vessel.port_id, vessel_id: @port_vessel.vessel_id } }
    assert_redirected_to port_vessel_url(@port_vessel)
  end

  test "should destroy port_vessel" do
    assert_difference('PortVessel.count', -1) do
      delete port_vessel_url(@port_vessel)
    end

    assert_redirected_to port_vessels_url
  end
end
