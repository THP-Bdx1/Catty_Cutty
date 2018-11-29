# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
image_arr = [
  "http://wfiles.brothersoft.com/s/staring_cat-800x600.jpg",
  "http://wfiles.brothersoft.com/c/cat-wallpaper_195925-800x600.jpg",
  "http://wfiles.brothersoft.com/c/cat-wallpaper_195981-800x600.jpg",
  "https://www.chats-de-france.com/photo/chats/t_chat/chats-ragdoll-d25293f9-1e7c-0504-7126-28f44f1a72aa.jpg",
  "https://cdn20.patchcdn.com/users/22906546/20180806/012649/styles/T800x600/public/processed_images/shutterstock_782211643-1533574759-3613.jpg",
  "https://i.kym-cdn.com/photos/images/newsfeed/001/069/986/bd5.jpg",
  "http://www.thecatshoppedogstore.com/s/cc_images/cache_898504680.jpg?t=1490326069",
  "http://www.monchatestroi.fr/wp-content/uploads/2016/03/Hector-le-chat-premi%C3%A8re-approche.jpg",
  "https://thumbs-prod.si-cdn.com/uJ1BXxtghIVPeBzK5L1uWEXyS9g=/800x600/filters:no_upscale()/https://public-media.smithsonianmag.com/filer/d1/33/d133235a-688f-4faf-8166-a7532321c1db/felix-44.jpg",
  "https://cdn.allwallpaper.in/wallpapers/800x600/4081/animals-cat-paws-cats-pets-tails-800x600-wallpaper.jpg",
  "https://www.spa-montpellier.org/wp-content/uploads/2018/08/MAYA-82254.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY63JWpaayJHVAUg4bBNUn46kzNhbQ7Qt8KTJes_AerE45VAcryg",
  "https://thumbs-prod.si-cdn.com/0s-cHLruwd4LUqAKRoNIGusc7xg=/800x600/filters:no_upscale()/https://public-media.smithsonianmag.com/filer/c9/00/c9006d5a-854c-4d68-91d3-d6e4c8195695/acoustic_kitty.jpg",
  "https://allthatsinteresting.com/wordpress/wp-content/uploads/2012/08/ugly-cat-sphynx-2.jpg",
  "https://www.spa-montpellier.org/wp-content/uploads/2018/07/OMALLEY-81847-2.jpg",
  "https://pbs.twimg.com/media/DhGZlF5XcAEmbZm.jpg",
  "http://www.thecatshoppedogstore.com/s/cc_images/cache_898504688.jpg?t=1490326069",
  "http://s1.1zoom.me/b6045/911/Cats_Glance_Fear_Cute_Box_532229_800x600.jpg",
  "https://www.wanimo.com/veterinaire/images/articles/chat/chat-neige.jpg",
  "https://www.seriousfacts.com/wp-content/uploads/2017/05/calico-cat.jpg"
]

i=0

3.times do
  catagories = Category.create!(name: Faker::Artist.name)
end

20.times do
  item = Item.create!(title: Faker::Job.title, description: Faker::StarWars.quote, price: Random.rand(1..20)-0.01, image_url: image_arr[i], category_id: Random.rand(1..3))
  i+=1
end

1.times do
user=User.create!(email: "thpbordeaux@gmail.com", password: "123456", nickname: "THPBdx", admin: true)
end

1.times do
user=User.create!(email: "nazicat@nazi.cat", password: "nazicat", nickname: "nazicat", admin: true)
end
