class PassByMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pass_by_mailer.passBy.subject
  #
  def passBy(user)
    @user = user
    mail to: @user.email_address, subject: 'Your ISS pass by times'
  end
end
