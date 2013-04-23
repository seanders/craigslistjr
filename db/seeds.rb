# Category.create(:name => "Rentals")
# Category.create(:name => "Jobs")


post1 = Post.create(secret_key: "FDSAGF",
            title: "Nice apartment",
            price: 100.00,
            description: "two bedroom and car park and stuff",
            category_id: 1)
            
post2 = Post.create(secret_key: "GDSAFS",
            title: "Good job programming",
            price: 100_000.00,
            description: "you will be programming in VBA to build a website",
            category_id: 2)

