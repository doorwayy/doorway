class BedsController < ApiController
  BEDS_AVAILABLE= [
    {beds_count: 0},
    {beds_count: 0},
    {beds_count: 0},
    {beds_count: 0},
    {beds_count: 1},
    {beds_count: 1},
    {beds_count: 1},
    {beds_count: 1},
    {beds_count: 1},
    {beds_count: 2},
    {beds_count: 3},
    {beds_count: 5},
    {beds_count: 7},
    {beds_count: 11},
    {beds_count: 13},
    {beds_count: 17},
    {beds_count: 19},
  ]
  def available
    hash= BEDS_AVAILABLE.sample
    noun= 'bed'
    inflected= if hash[:beds_count]== 1
      noun.singularize
    else
      noun.pluralize
    end
    render json: hash.merge({beds_descriptor: inflected})
  end
end
