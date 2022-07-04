puts "🌱 Seeding..."

# Seed your database here

5.times do 
        
 artist = Artist.create(
    name: Faker::Name.name,
    avatar: Faker::Avatar.image,
    location: Faker::Address.country,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    genre: "Digital Art"
        )
    end
5.times do 
        
 artist = Artist.create(
    name: Faker::Name.name,
    avatar: Faker::Avatar.image,
    location: Faker::Address.country,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    genre: "Oil on Canvas"
        )
    end
5.times do 
        
 artist = Artist.create(
    name: Faker::Name.name,
    avatar: Faker::Avatar.image,
    location: Faker::Address.country,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    genre: "Mixed Media"
        )
    end

5.times do 
 art = Art.create(
    name: Faker::Books::CultureSeries.culture_ship,
    image_url: "https://source.unsplash.com/random",
    genre: "Music NFT",
    location: Faker::Address.country,
    link: Faker::Internet.domain_name,
    created_at: Faker::Time.backward(days: 14, period: :evening),
    artist_id: Artist.first.id
        )
    end      
5.times do 
 art = Art.create(
    name: Faker::Books::CultureSeries.culture_ship,
    image_url: "https://source.unsplash.com/random",
    genre: "1/1 Art NFT",
    location: Faker::Address.country,
    link: Faker::Internet.domain_name,
    created_at: Faker::Time.backward(days: 14, period: :evening),
    artist_id: Artist.first.id
        )
    end      
5.times do 
 art = Art.create(
    name: Faker::Books::CultureSeries.culture_ship,
    image_url: "https://source.unsplash.com/random",
    genre: "1/1 Photography NFT",
    location: Faker::Address.country,
    link: Faker::Internet.domain_name,
    created_at: Faker::Time.backward(days: 14, period: :evening),
    artist_id: Artist.first.id
        )
    end      

 10.times do 
 buyer = Buyer.create(
    name: Faker::Name.name,
    avatar: Faker::Avatar.image,
    location: Faker::Address.country,
    email: Faker::Internet.email
        )
    end

 5.times do 
    # arr = ["Free", "Paid", "Artist"]
    # account_type = arr.shuffle
 account = Account.create(
    name: Faker::Name.name,
    account_number: Faker::Number.number(digits: 10),
    password: Faker::Number.leading_zero_number(digits: 10),
    location: Faker::Address.country,
    account_type: "Free",
    art_id: Art.first.id,
    buyer_id: Buyer.first.id
        )
    end

 5.times do 
    # arr = ["Free", "Paid", "Artist"]
    # account_type = arr.shuffle
 account = Account.create(
    name: Faker::Name.name,
    account_number: Faker::Number.number(digits: 10),
    password: Faker::Number.leading_zero_number(digits: 10),
    location: Faker::Address.country,
    account_type: "Paid",
    art_id: Art.first.id,
    buyer_id: Buyer.first.id
        )
    end

 5.times do 
    # arr = ["Free", "Paid", "Artist"]
    # account_type = arr.shuffle
 account = Account.create(
    name: Faker::Name.name,
    account_number: Faker::Number.number(digits: 10),
    password: Faker::Number.leading_zero_number(digits: 10),
    location: Faker::Address.country,
    account_type: "Artist",
    art_id: Art.first.id,
    buyer_id: Buyer.first.id
        )
    end

puts "✅ Done seeding!"
