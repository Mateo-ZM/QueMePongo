class UserMailer < ApplicationMailer

    def Recupero_password_email(user)
        @user = user
        @greeting = "Hi"
        
        mail to: user.email, :subject => 'Reset password instructions'
    end
end
