# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
image_arr = [
  "https://kittenrescue.org/wp-content/uploads/2017/03/KittenRescue_KittenCareHandbook.jpg",
  "https://www.thesprucepets.com/thmb/810a_HYIb2E8DxkedI6V-3gtkys=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/kitten-looking-at-camera-521981437-57d840213df78c583374be3b.jpg",
  "http://image.noelshack.com/fichiers/2018/48/1/1543225719-ras-la-croquette.png",
  "http://image.noelshack.com/fichiers/2018/48/1/1543232255-its-time-to-stop-posting.png",
  "https://i.kym-cdn.com/photos/images/original/001/104/756/5bc.jpg",
  "https://i.kym-cdn.com/photos/images/newsfeed/001/069/986/bd5.jpg",
  "https://media.giphy.com/media/o0vwzuFwCGAFO/giphy.gif",
  "https://i.pinimg.com/originals/fc/ea/9a/fcea9a5369ebbdca95dca1c0aa1e1a51.jpg",
  "https://thumbs.gfycat.com/IdioticWatchfulArieltoucan-small.gif",
  "https://media.giphy.com/media/zJ8ldRaGLnHTa/giphy.gif",
  "https://i.pinimg.com/originals/76/70/36/7670360c4c619b9214bb719fb49e0076.jpg",
  "https://media.giphy.com/media/2dnTHovkLt6Yo/giphy.gif",
  "https://catmacros.files.wordpress.com/2011/01/coke_cat_freak.jpg",
  "https://i0.wp.com/bayart.org/wp-content/uploads/2018/05/funny-cat-memes-images.jpg?fit=483%2C444&ssl=1",
  "http://quotationsquotes.com/wp-content/uploads/2015/10/Top-30-Funny-cat-Picture-Quotes-joke-591x787.jpg",
  "https://quotesnhumor.com/wp-content/uploads/2015/07/Top-30-Funny-Cat-Memes.jpg",
  "https://i.ytimg.com/vi/2fb-g_V-UT4/hqdefault.jpg",
  "https://educacentre.com/wp-content/uploads/2018/09/funny-cat-resume-red-dot.jpg",
  "http://randomfunnycat.com/wp-content/uploads/2015/11/Top-30-Funny-Cat-Memes-Hilarious.jpg",
  "https://i.kym-cdn.com/photos/images/newsfeed/000/437/747/b0d.jpg"
]

i=0

20.times do
  item = Item.create!(title: Faker::Job.title, description: Faker::StarWars.quote, price: Random.rand(1..20)-0.01, image_url: image_arr[i])
  i+=1
end
