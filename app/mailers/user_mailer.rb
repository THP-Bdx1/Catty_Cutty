class UserMailer < ApplicationMailer

    def mail_commande (order, usermail)
        @order = order
        mail(to: usermail, subject: "Merci d'avoir acheté cette image de chaton")
    end


    def mail_commande_admin (order, usermail)
        @order = order
        @usermail = usermail
        @users = User.all
        @users.each do |user|
            if user.admin == true
                mail(to: user, subject: "On a fait une vente!")
            end
        end
    end

end
