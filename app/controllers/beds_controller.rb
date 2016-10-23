class BedsController < ApiController
  BEDS_AVAILABLE= [
    0,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
  ]
  def available
    count= BEDS_AVAILABLE.sample
    noun= 'bed'
    inflected= if count== 1
      noun.singularize
    else
      noun.pluralize
    end
    render json: {beds_count: count, beds_descriptor: inflected}
  end
end
