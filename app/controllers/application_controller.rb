class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :contador_peticiones



  private

  def contador_peticiones
  	valor = (cookies[:peticiones] || "0").to_i
  	cookies[:peticiones] ={ :value => (valor + 1).to_s, :expires => Time.now + 1.hour }
  	@peticiones = cookies[:peticiones]
  end
end
