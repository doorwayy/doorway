class ApiController < ApplicationController

  ROOT_RESPONSE= {
    requestId: 'connection is good',
    likelihood: 'poor',
    photos: [nil, nil, nil],
    routes: ActionDispatch::Routing::RoutesInspector.new(Rails.application.routes.routes).format(ActionDispatch::Routing::ConsoleFormatter.new(), nil),
  }

  def root
    render json: ROOT_RESPONSE
  end
end
