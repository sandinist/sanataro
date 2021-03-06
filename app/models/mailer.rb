# -*- coding: utf-8 -*-
class Mailer < ActionMailer::Base
  def signup_confirmation(user)
    @user = user
    mail(to: user.email, from: SYSTEM_MAIL_ADDRESS, subject: "[#{PRODUCT_NAME}] ユーザ登録は完了していません")
  end
  
  def signup_complete(user)
    @user = user
    mail(to: user.email, from: SYSTEM_MAIL_ADDRESS, subject: "[#{PRODUCT_NAME}] ユーザ登録完了")
  end
end
