class UserMailer < ApplicationMailer

    def mail_commande (order, usermail)
        @order = order
        mail(to: usermail, subject: "Merci d'avoir acheté cette image de chaton")
    end
end
