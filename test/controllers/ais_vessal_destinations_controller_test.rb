require 'test_helper'

class AisVessalDestinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ais_vessal_destination = ais_vessal_destinations(:one)
  end

  test "should get index" do
    get ais_vessal_destinations_url
    assert_response :success
  end

  test "should get new" do
    get new_ais_vessal_destination_url
    assert_response :success
  end

  test "should create ais_vessal_destination" do
    assert_difference('AisVessalDestination.count') do
      post ais_vessal_destinations_url, params: { ais_vessal_destination: { destination: @ais_vessal_destination.destination, draught: @ais_vessal_destination.draught, eta: @ais_vessal_destination.eta, vessel_id: @ais_vessal_destination.vessel_id } }
    end

    assert_redirected_to ais_vessal_destination_url(AisVessalDestination.last)
  end

  test "should show ais_vessal_destination" do
    get ais_vessal_destination_url(@ais_vessal_destination)
    assert_response :success
  end

  test "should get edit" do
    get edit_ais_vessal_destination_url(@ais_vessal_destination)
    assert_response :success
  end

  test "should update ais_vessal_destination" do
    patch ais_vessal_destination_url(@ais_vessal_destination), params: { ais_vessal_destination: { destination: @ais_vessal_destination.destination, draught: @ais_vessal_destination.draught, eta: @ais_vessal_destination.eta, vessel_id: @ais_vessal_destination.vessel_id } }
    assert_redirected_to ais_vessal_destination_url(@ais_vessal_destination)
  end

  test "should destroy ais_vessal_destination" do
    assert_difference('AisVessalDestination.count', -1) do
      delete ais_vessal_destination_url(@ais_vessal_destination)
    end

    assert_redirected_to ais_vessal_destinations_url
  end
end
