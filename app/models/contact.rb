class Contact < MailForm::Base

  attribute :nombre,      :validate => true
  attribute :asunto,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :texto_asunto
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Formulario de Contacto",
      :to => "ventas@enfoqueregional.cl",
      :from => %("#{nombre}" <#{email}>)
    }
  end
end
