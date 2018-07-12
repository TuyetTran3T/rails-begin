require 'test_helper'

class AisTrackingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ais_tracking = ais_trackings(:one)
  end

  test "should get index" do
    get ais_trackings_url
    assert_response :success
  end

  test "should get new" do
    get new_ais_tracking_url
    assert_response :success
  end

  test "should create ais_tracking" do
    assert_difference('AisTracking.count') do
      post ais_trackings_url, params: { ais_tracking: { collection_type: @ais_tracking.collection_type, course: @ais_tracking.course, heading: @ais_tracking.heading, last_ais_updated_at: @ais_tracking.last_ais_updated_at, latitude: @ais_tracking.latitude, longtitude: @ais_tracking.longtitude, nav_status_code: @ais_tracking.nav_status_code, speed_over_ground: @ais_tracking.speed_over_ground, vessel_id: @ais_tracking.vessel_id } }
    end

    assert_redirected_to ais_tracking_url(AisTracking.last)
  end

  test "should show ais_tracking" do
    get ais_tracking_url(@ais_tracking)
    assert_response :success
  end

  test "should get edit" do
    get edit_ais_tracking_url(@ais_tracking)
    assert_response :success
  end

  test "should update ais_tracking" do
    patch ais_tracking_url(@ais_tracking), params: { ais_tracking: { collection_type: @ais_tracking.collection_type, course: @ais_tracking.course, heading: @ais_tracking.heading, last_ais_updated_at: @ais_tracking.last_ais_updated_at, latitude: @ais_tracking.latitude, longtitude: @ais_tracking.longtitude, nav_status_code: @ais_tracking.nav_status_code, speed_over_ground: @ais_tracking.speed_over_ground, vessel_id: @ais_tracking.vessel_id } }
    assert_redirected_to ais_tracking_url(@ais_tracking)
  end

  test "should destroy ais_tracking" do
    assert_difference('AisTracking.count', -1) do
      delete ais_tracking_url(@ais_tracking)
    end

    assert_redirected_to ais_trackings_url
  end
end
