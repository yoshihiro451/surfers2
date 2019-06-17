class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail to: inquiry.email, subject:"Sample from Rails"
  end
end
