require 'test_helper'

class VesselsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vessel = vessels(:one)
  end

  test "should get index" do
    get vessels_url
    assert_response :success
  end

  test "should get new" do
    get new_vessel_url
    assert_response :success
  end

  test "should create vessel" do
    assert_difference('Vessel.count') do
      post vessels_url, params: { vessel: { active: @vessel.active, callsign: @vessel.callsign, company_id: @vessel.company_id, imo: @vessel.imo, line_id: @vessel.line_id, mmsi: @vessel.mmsi, name: @vessel.name, raw_data: @vessel.raw_data, slug: @vessel.slug, status: @vessel.status, vessel_class: @vessel.vessel_class, vessel_type: @vessel.vessel_type } }
    end

    assert_redirected_to vessel_url(Vessel.last)
  end

  test "should show vessel" do
    get vessel_url(@vessel)
    assert_response :success
  end

  test "should get edit" do
    get edit_vessel_url(@vessel)
    assert_response :success
  end

  test "should update vessel" do
    patch vessel_url(@vessel), params: { vessel: { active: @vessel.active, callsign: @vessel.callsign, company_id: @vessel.company_id, imo: @vessel.imo, line_id: @vessel.line_id, mmsi: @vessel.mmsi, name: @vessel.name, raw_data: @vessel.raw_data, slug: @vessel.slug, status: @vessel.status, vessel_class: @vessel.vessel_class, vessel_type: @vessel.vessel_type } }
    assert_redirected_to vessel_url(@vessel)
  end

  test "should destroy vessel" do
    assert_difference('Vessel.count', -1) do
      delete vessel_url(@vessel)
    end

    assert_redirected_to vessels_url
  end
end
