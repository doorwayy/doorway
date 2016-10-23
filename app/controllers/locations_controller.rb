class LocationsController < ApiController
  LOCATIONS= [
    'St. Patricks',
    'Gateway 180',
    'Karen House',
    'Covenant House',
    'Bridgeway',
    'Mayo Clinic',
    'ALIVE',
    'Weinman Center',
    "Lydia's House",
  ]
  DISTANCES= [
    0.1,
    0.2,
    0.1,
    0.5,
    0.9,
    2,
    3,
    5,
    7,
    0.1,
    0.9,
    2.1,
    8,
    0.1,
    0.1,
  ]
  def closest
    hash= {closest: '  '+ DISTANCES.sample.to_s+ " miles\naway from\n"+ LOCATIONS.sample}
    render json: hash
  end
end
