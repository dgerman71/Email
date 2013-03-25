#encoding: utf-8
class HomeController < ApplicationController
  layout "application", :except => :contacto
  def index
    @titulo = "Estamos en la Principal"
  end

  def quienes_somos
    @titulo = "Estamos en Quiénes Somos"
  end

  def localizacion
    @titulo = "Estamos en Localización"
  end

  def servicios
    @titulo = "Estamos en Servicios"
  end

  def contacto
    @titulo = "Formulario de Contacto"
    if request.post?
      begin

    if Email.micorreo(params).deliver and Email.enviar(params).deliver
      flash.now[:noticia] = "Se ha enviado correctamente"
    end
    rescue
      flash.now[:error] = "No se ha enviado correctamente"
    end
  end
end
end
