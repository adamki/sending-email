class NotificationsMailer < ApplicationMailer
  def contact(email_params)
    @message = email_params[:message]

    mail(
      to: email_params[:email],
      subject: "Message for #{email_params[:name]}"
    )
  end
end
