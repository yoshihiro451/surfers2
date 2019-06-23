class NotificationMailer < ApplicationMailer
	 default from: "yokoy570@gmail.com"
	 layout 'mailer'

  def send_confirm_to_user(contact)
    @contact = contact
    mail(
      from: "yokoy570@gmail.com",
      subject: "お問い合わせ内容。", #メールのタイトル,
      to: @contact.user.email #宛先
    ) #do |format|
    #   format.text
    # end
  end
end
