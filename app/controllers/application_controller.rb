class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #respond_to :json
  FOO= {
      requestId: nil,
      likelihood: nil,
      photos: nil,
  }
  def root
    respond_to do |format|
      format.json do
        render json: FOO
      end
    end
  end
end
