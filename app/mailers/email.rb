class Email < ActionMailer::Base
  default from: "ruby@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def micorreo(parametros)
    enviar_correo(parametros,"dgerman71@gmail.com","Mensaje nuevo")
  end

  def enviar(parametros)
    enviar_correo(parametros,parametros[:email],"Gracias por contactar con German Di Leva")
  end

  private 
  def enviar_correo(parametros,email,asunto)
    @nombre = parametros[:nombre]
    @email = parametros[:email]
    @asunto = parametros[:asunto]
    @mensaje = parametros[:mensaje]

    mail(:to => email, :subject => asunto) do |format|
      format.text
      format.html
    end
  end
end
