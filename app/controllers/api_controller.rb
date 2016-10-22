class ApiController < ApplicationController
  ROOT_RESPONSE= {
    requestId: 'connection is good',
    likelihood: 'poor',
    photos: [nil, nil, nil],
    routes: ActionDispatch::Routing::RoutesInspector.new(Rails.application.routes.routes).format(ActionDispatch::Routing::ConsoleFormatter.new(), nil),
  }

  def root
    respond_to do |format|
      format.json do
        render json: ROOT_RESPONSE
      end
      format.html do
        render json: {'Please add to URL:' => '?format=json'}
      end
    end
  end
end
