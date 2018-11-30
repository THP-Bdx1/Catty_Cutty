# KITTYCATS, THE CAT PICTURES E-SHOP
##### Made by The Hacking Project Bordeaux One - Session Six

![THP-BDX1](http://image.noelshack.com/fichiers/2018/48/4/1543504354-thpbdx1.png)

---

## DISCLAIMER

Attention, ce site est mignon.

---

## VERSION EN PRODUCTION

Vous pouvez retrouver une version en production du site [en cliquant ici](https://a-chat-online.herokuapp.com/)
#EDIT tardif : tu peux tester l'user-administrateur avec les logins suivant :
- Email : thpbordeaux@gmail.com
- Password : 123456
On ne critiquera pas l'originalité du password, merci.
#Tu peux aussi t'amuser en localhost, on ne jugera pas.

---

## EQUIPE

L'équipe **THP-BDX-1** est composée des membres suivants :
* Paul Guérin - back
* William Horel - back
* Valérian Michelot - back
* François Flous - front
* David Rangeard - front

---

## PRESENTATION DU PROJET

L'objectif de la semaine était de réaliser une boutique en ligne proposant à la vente des images de chats. Réalisé à l'aide d'un Trello, le projet comporte un MVP ainsi que plusieurs features optionnelles.

---

## CE QUI A ETE REALISE

##### Features de base
* Les visiteurs peuvent parcourir les produits et aller sur leur page
* Il est possible de s'inscrire et de se connecter en temps qu'utilisateur
* Un utilisateur peut ajouter des produits à son panier, et le modifier ultérieurement
* Un utilisateur peut passer une commande (checkout) et stripe
* Un utilisateur dispose d'une page profil où il peut voir ses commandes passées
* Un utilisateur peut éditer ses informations personnelles ( nom, mail, image de profil, mot de passe )
* Un utilisateur peut ajouter une photo de profil en uploadant un fichier
* Un utilisateur Administrateur peut recevoir un mail avertissant d'une commande passée, tout comme l'utilisateur reçoit le résumé de sa commande

###### Features en plus
* Un utilisateur Administrateur peut accéder à un tableau des commandes passées
* Un utilisateur Administrateur peut créer des nouveaux produits et modifier les produits existant (nom, description, prix, et ajout d'image)
* Les produits peuvent être affichés par catégorie (display sur la page Home, mais également accessibles en cliquant sur la "CATAGORY" (merci Amado-thème)du produit dans la page détaillée du produit
* Chaque utilisateur peut ajouter à sa guise les photos à ses favoris à partir de la page détaillée du produit, et consulter ses favoris
* Tu peux faire joujou avec TOUS les boutons, en hover ou en cliquant dessus, parce qu'on s'est éclaté sur le JS

---

## PISTES D'AMELIORATION

* Ne pas pusher la version Heroku au dernier moment. En effet, un push tardif nous a permis de constater que:
- les fonts ne sont pas ddl correctement via les calls url('/fonts/blablabla'), de même pour les @import des différents fichiers css. Heroku va les chercher directement dans le dossier public. Donc, à fixer !
- Javascript ne marche pas par défaut sur Heroku. Il faut, me semble-t-il, répartir dans les fichiers .coffee ?
Ainsi, il y a une légère différence entre la version github, qui marche parfaitement en localhost, et la version pushed sur Heroku, un peu plus bordélique
* Faire plus de tests ! Les tests ont été commencés avec Capybara, jusqu'à ce que le push sur Heroku devienne une GROSSE CATASTROPHE ! Donc sorry, mais lance donc un **rspec** dans ta console, et tu verras 3 misérables tests apparaître...

---

## REMERCIEMENTS

![THP-BDX1](http://image.noelshack.com/fichiers/2018/48/4/1543504354-thpbdx1.png)


Toute l'équipe de THP et l'équipe soudée de Bordeaux

![coffee](http://image.noelshack.com/fichiers/2018/48/4/1543504475-nescaf-200-g.jpg)
![monster](http://image.noelshack.com/fichiers/2018/48/4/1543504519-3717996-1.jpg)
![orangina](http://image.noelshack.com/fichiers/2018/48/4/1543504628-orangina-sparkling-citrus-beverage-case-330-ml.jpg)
![croquemonsieurcestlavieaussi](https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2018.2F09.2F25.2Fecc553bd-a106-46e7-96c9-33ef2d324e22.2Ejpeg/734x412/quality/80/crop-from/center/croque-monsieur.jpeg)


Ce à quoi nous avons carburé pour le projet ( et la raison de notre mort prochaine à 30 ans )

