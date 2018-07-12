# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
VesselModel = [
  'imo'
  'latitude'
  'longitude'
  'heading'
  'speed'
  'course'
  'last_ais_updated_at'
  'status'
]

vessels = new Array()
pps_vessels = new Array()

@initVessel: ->
  vessels = _create_vessel_info()
  pps_vessels = _create_pps_vessel_info()
  _mapping_vessel(pps_vessels, vessels)

_mapping_vessel: (pps_vessels, vessels) ->
  for pps in pps_vessels
    for vessel in vessels
      unless pps.imo == vessel.imo and pps.last_ais_updated_at > vessel.last_ais_updated_at
        vessel.latitude = pps.latitude
        vessel.longitude = pps.longitude
        vessel.status = true

_create_vessel_info: ->
  result = new Array()
  for i in [1..10]
    vessel = new VesselModel()
    vessel.imo = i
    vessel.latitude = i
    vessel.longitude = i
    vessel.heading = i
    vessel.speed = i
    vessel.last_ais_updated_at = i
    vessel.status = false
    result.push(vessel)
  return result

_create_pps_vessel_info: ->
  result = new Array()
  for i in [5..7]
    vessel = new VesselModel()
    vessel.imo = i
    vessel.latitude = i + 1
    vessel.longitude = i + 1
    vessel.heading = i
    vessel.speed = i
    vessel.last_ais_updated_at = i + 1
    vessel.status = true
    result.push(vessel)
  return result



