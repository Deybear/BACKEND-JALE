# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# - - - </> [TYPE] </> - - - #
# UserType.create!(user_type_desc: "admin")
# UserType.create!(user_type_desc: "default")

# - - - </> [USER] </> - - - #
# User.create!(user_name: "Deynor", user_lastname: "Rodriguez", user_email: "drodriguezr@fwdcostarica.com", password: "Deynor12345", user_birthdate: "1999-10-05", user_type_id: 1)
# User.create!(user_name: "Wayner", user_lastname: "Wilson", user_email: "wgonzalezw@fwdcostarica.com", password: "Wayner12345", user_birthdate: "1998-04-29")

# - - - </> [CATEGORY] </> - - - #
# Category.create!(category_desc: "+18")
# Category.create!(category_desc: "art")
# Category.create!(category_desc: "free")
# Category.create!(category_desc: "park")
# Category.create!(category_desc: "food")
# Category.create!(category_desc: "music")
# Category.create!(category_desc: "coast")
# Category.create!(category_desc: "dance")
# Category.create!(category_desc: "flora")
# Category.create!(category_desc: "fauna")
# Category.create!(category_desc: "anime")
# Category.create!(category_desc: "sports")
# Category.create!(category_desc: "museum")
# Category.create!(category_desc: "forest")
# Category.create!(category_desc: "science")
# Category.create!(category_desc: "culture")
# Category.create!(category_desc: "tourism")
# Category.create!(category_desc: "gallery")
# Category.create!(category_desc: "letters")
# Category.create!(category_desc: "mountain")
# Category.create!(category_desc: "religion")
# Category.create!(category_desc: "monument")
# Category.create!(category_desc: "adventure")
# Category.create!(category_desc: "education")
# Category.create!(category_desc: "exhibition")
# Category.create!(category_desc: "technology")
# Category.create!(category_desc: "gastronomy")
# Category.create!(category_desc: "restaurant")

# - - - </> [PLACE] </> - - - #
# Place.create!(place_name: "Seaworld Park", place_desc: "Theme park, focused on coastal marine education. In addition to having a rescue and rehabilitation center for marine animals",
# place_cost: 10, place_email: "info@parquemarino.org", place_score: 4, place_phone: "2661-5272", place_website: "http://www.parquemarino.org/",
# place_address: "Province of Puntarenas, Puntarenas", place_time_open: "9:00", place_time_close: "16:30")

# Place.create!(place_name: "Curú Wildlife Refuge", place_desc: "Refuge with trails, sightings of diverse fauna, water routes and activities such as snorkeling",
# place_cost: 15, place_email: "info@curuwildliferefuge.com", place_score: 5, place_phone: "6209-3846", place_website: "https://curuwildliferefuge.com/",
# place_address: "Province of Puntarenas, Paquera", place_time_open: "7:00", place_time_close: "16:00")

# Place.create!(place_name: "Tortuga Island", place_desc: "You will enjoy a beautiful white sand beach and turquoise waters. Enjoy activities such as a banana boat tour or snorkeling",
# place_cost: 130, place_email: "reserve@toursparadise.com", place_score: 4, place_phone: "8597-0935", place_website: "https://www.toursparadise.com/",
# place_address: "Province of Puntarenas, Puntarenas", place_time_open: "7:00", place_time_close: "19:00")

# Place.create!(place_name: "Natuwa Wildlife Sanctuary", place_desc: "Refuge for wild animals that suffer from human activities such as hunting, habitat invasion and deforestation",
# place_cost: 34, place_email: "info@natuwa.org", place_score: 4, place_phone: "8644-4666", place_website: "https://www.natuwa.com/",
# place_address: "Province of Puntarenas, Pitahaya", place_time_open: "8:00", place_time_close: "16:00")

# Place.create!(place_name: "Monteverde Cloud Forest", place_desc: "Tropical forest with a wide variety of flora and fauna species, as well as guided tours and trails",
# place_cost: 26, place_email: "monteverde@cct.or.cr", place_score: 5, place_phone: "2645-5122", place_website: "https://cloudforestmonteverde.com/",
# place_address: "Province of Puntarenas, Monteverde", place_time_open: "7:00", place_time_close: "16:00")

# - - - </> [PHOTO] </> - - - #
# Photo.create!(photo_url: "https://shorturl.at/jJQS0", place_id: 1)
# Photo.create!(photo_url: "https://shorturl.at/egwPU", place_id: 1)
# Photo.create!(photo_url: "https://shorturl.at/mLS05", place_id: 1)
# Photo.create!(photo_url: "https://shorturl.at/nvx46", place_id: 1)

# Photo.create!(photo_url: "https://shorturl.at/ekpDP", place_id: 2)
# Photo.create!(photo_url: "https://shorturl.at/dhGT1", place_id: 2)
# Photo.create!(photo_url: "https://shorturl.at/bipzX", place_id: 2)
# Photo.create!(photo_url: "https://shorturl.at/zHKR8", place_id: 2)

# Photo.create!(photo_url: "https://shorturl.at/zBE27", place_id: 3)
# Photo.create!(photo_url: "https://shorturl.at/bhvyz", place_id: 3)
# Photo.create!(photo_url: "https://shorturl.at/DNT15", place_id: 3)
# Photo.create!(photo_url: "https://shorturl.at/glvZ9", place_id: 3)

# Photo.create!(photo_url: "https://shorturl.at/fhFZ5", place_id: 4)
# Photo.create!(photo_url: "https://shorturl.at/rUWY9", place_id: 4)
# Photo.create!(photo_url: "https://shorturl.at/hkEJS", place_id: 4)
# Photo.create!(photo_url: "https://shorturl.at/ahY04", place_id: 4)

# Photo.create!(photo_url: "https://shorturl.at/gpW03", place_id: 5)
# Photo.create!(photo_url: "https://shorturl.at/cot09", place_id: 5)
# Photo.create!(photo_url: "https://shorturl.at/inpDJ", place_id: 5)
# Photo.create!(photo_url: "https://shorturl.at/kzJY8", place_id: 5)

# - - - </> [EVENT] </> - - - #
# Event.create!(event_name: "IV Exhibition of Cars", event_desc: "If you are a vehicle lover, whether in classic or sports versions, you cannot miss this activity. The Municipality of Esparza invites you to enjoy the IV Classic and Sports Car Exhibition, an event full of adrenaline, entertainment and engines",
# event_cost: 0, event_email: "info@muniesparza.go.cr", event_photo: "https://shorturl.at/ktDGZ", event_phone: "2636-0100", event_website: "http://muniesparza.go.cr/",
# event_address: "Province of Puntarenas, Esparza", event_date_start: "2024-01-14", event_time_start: "12:00")

# Event.create!(event_name: "El Golfo, Jicaral Carnival", event_desc: "Come and enjoy the El Golfo Festival, Jicaral we will have great activities such as the magnificent horse parade, the incredible bullfighting nightfall or the mechanical games",
# event_cost: 6, event_email: "sugerencias@concejolepanto.go.cr", event_photo: "https://shorturl.at/equNU", event_phone: "2650-0198", event_website: "https://www.concejolepanto.go.cr/",
# event_address: "Province of Puntarenas, Lepanto", event_date_start: "2024-01-12", event_time_start: "13:00")

# Event.create!(event_name: "Paquera, Vainilla Festival", event_desc: "Come and enjoy the El Golfo, Jicaral Carnival we will have great activities such as the magnificent horse parade, the incredible bullfighting nightfall or the mechanical games",
# event_cost: 8, event_email: "intendenciamunicipal@concejopaquera.go.cr", event_photo: "https://shorturl.at/xyzJW", event_phone: "2641-0025", event_website: "https://www.concejopaquera.go.cr/",
# event_address: "Province of Puntarenas, Paquera", event_date_start: "2024-01-26", event_time_start: "13:00")

# - - - </> [REVIEW] </> - - - #
# Review.create!(review_title: "I loved this place! :3", review_desc: "Totally recommended to enjoy the wonders of sea life", review_score: 3)
# PlaceReview.create!(user_id: 1, place_id: 1, review_id: 1)

# - - - </> [TOUR] </> - - - #
# UserTour.create!(user_id: 1, place_id: 1)

# - - - </> [CATEGORY] </> - - - #
# PlaceCategory.create!(place_id: 1, category_id: 5)
# PlaceCategory.create!(place_id: 1, category_id: 7)
# PlaceCategory.create!(place_id: 1, category_id: 10)
# PlaceCategory.create!(place_id: 1, category_id: 13)
# PlaceCategory.create!(place_id: 1, category_id: 15)
# PlaceCategory.create!(place_id: 1, category_id: 24)
# PlaceCategory.create!(place_id: 1, category_id: 25)

# PlaceCategory.create!(place_id: 2, category_id: 5)
# PlaceCategory.create!(place_id: 2, category_id: 9)
# PlaceCategory.create!(place_id: 2, category_id: 10)
# PlaceCategory.create!(place_id: 2, category_id: 14)
# PlaceCategory.create!(place_id: 2, category_id: 17)
# PlaceCategory.create!(place_id: 2, category_id: 20)
# PlaceCategory.create!(place_id: 2, category_id: 23)

# PlaceCategory.create!(place_id: 3, category_id: 5)
# PlaceCategory.create!(place_id: 3, category_id: 7)
# PlaceCategory.create!(place_id: 3, category_id: 9)
# PlaceCategory.create!(place_id: 3, category_id: 10)
# PlaceCategory.create!(place_id: 3, category_id: 12)
# PlaceCategory.create!(place_id: 3, category_id: 17)
# PlaceCategory.create!(place_id: 3, category_id: 23)

# PlaceCategory.create!(place_id: 4, category_id: 5)
# PlaceCategory.create!(place_id: 4, category_id: 9)
# PlaceCategory.create!(place_id: 4, category_id: 10)
# PlaceCategory.create!(place_id: 4, category_id: 14)
# PlaceCategory.create!(place_id: 4, category_id: 17)
# PlaceCategory.create!(place_id: 4, category_id: 20)
# PlaceCategory.create!(place_id: 4, category_id: 23)

# PlaceCategory.create!(place_id: 5, category_id: 5)
# PlaceCategory.create!(place_id: 5, category_id: 9)
# PlaceCategory.create!(place_id: 5, category_id: 10)
# PlaceCategory.create!(place_id: 5, category_id: 14)
# PlaceCategory.create!(place_id: 5, category_id: 17)
# PlaceCategory.create!(place_id: 5, category_id: 20)
# PlaceCategory.create!(place_id: 5, category_id: 23)

# - - - </> [CATEGORY] </> - - - #
# EventCategory.create!(event_id: 1, category_id: 3)
# EventCategory.create!(event_id: 1, category_id: 25)

# EventCategory.create!(event_id: 2, category_id: 3)
# EventCategory.create!(event_id: 2, category_id: 5)
# EventCategory.create!(event_id: 2, category_id: 6)
# EventCategory.create!(event_id: 2, category_id: 8)
# EventCategory.create!(event_id: 2, category_id: 16)
# EventCategory.create!(event_id: 2, category_id: 17)
# EventCategory.create!(event_id: 2, category_id: 25)

# EventCategory.create!(event_id: 3, category_id: 3)
# EventCategory.create!(event_id: 3, category_id: 5)
# EventCategory.create!(event_id: 3, category_id: 6)
# EventCategory.create!(event_id: 3, category_id: 8)
# EventCategory.create!(event_id: 3, category_id: 16)
# EventCategory.create!(event_id: 3, category_id: 17)
# EventCategory.create!(event_id: 3, category_id: 25)

# - - - </> [LOCATION] </> - - - #
# PlaceLocation.create!(place_lat: "9.977114", place_lon: "-84.826716", place_id: 1)
# PlaceLocation.create!(place_lat: "9.7898319", place_lon: "-84.9247333", place_id: 2)
# PlaceLocation.create!(place_lat: "9.768272", place_lon: "-84.9122146", place_id: 3)
# PlaceLocation.create!(place_lat: "10.0484938", place_lon: "-84.8054945", place_id: 4)
# PlaceLocation.create!(place_lat: "10.2989417", place_lon: "-84.7681559", place_id: 5)

# - - - </> [LOCATION] </> - - - #
# EventLocation.create!(event_lat: "9.9900623", event_lon: "-84.6667152", event_id: 1)
# EventLocation.create!(event_lat: "9.9322676", event_lon: "-85.0491949", event_id: 2)
# EventLocation.create!(event_lat: "9.8180048", event_lon: "-84.9544433", event_id: 3)