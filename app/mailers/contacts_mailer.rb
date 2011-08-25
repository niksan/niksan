class ContactsMailer < ActionMailer::Base
  default :from => "Сайт NIKSAN.RU <site@niksan.ru>"

  def contact_form_email(message)
    @theme = message[:theme]
    @name = message[:name]
    @email = message[:email]
    @phone = message[:phone]
    @msg = message[:body]
    mail(:to => 'info@niksan.ru', :subject => "Сообщение с сайта niksan.ru")
  end
end
