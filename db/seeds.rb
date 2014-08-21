# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "============= Seeding Data Start ============="

item1 = Item.create(id: 1,
                    title: "Vanillisimo",
                    description: "The secret to the richer and creamier vanilla
                    flavor is the French custard base in this ice cream.",
                    price: 299,
                    status: 1)

item2 = Item.create(title:       "Fudge Vanilla",
                    description: " Our delicious traditional vanilla ice cream
                    with a chocolate fudge sauce rippled throughout.",
                    price:       249,
                    status:      1)

item3 = Item.create(title:       "Chocolate",
                    description: "A hit with the kids and one of our Top 10
                    flavors, our rich chocolate is made with real cocoa
                    powder.",
                    price:       199,
                    status:      1)

item4 = Item.create(title:       "Chocolate Almond",
                    description: "Our popular chocolate ice cream with fresh
                    roasted almonds pieces sprinkled throughout.",
                    price:       249,
                    status:      1)

item5 = Item.create(title:       "Rocky Road",
                    description: "Similar to Chocolate Almond ice cream, Rocky
                    Road also has mini marshmallows mixed in.",
                    price:       249,
                    status:      1)

item6 = Item.create(title:       "Chocolate Marshmallow",
                    description: "This chocolate based ice cream has a
                    marshmallow sauce gently folded in.",
                    price:       249,
                    status:      1)

item7 = Item.create(title:       "Chocolate Peanut Butter",
                    description: "One of our Top 10 flavors, this chocolate ice
                    cream features a dense peanut butter ripple throughout.",
                    price:       249,
                    status:      1)

item8 = Item.create(title:       "Chocolate Chip",
                    description: " A classic flavor, this vanilla ice cream has
                    dark chocolate shavings in it.",
                    price:       249,
                    status:      1)

item9 = Item.create(title:       "Mint Chocolate Chip",
                    description: "This refreshing light green mint ice cream is
                    one of our Top 10 flavors and has slivers of rich dark
                    chocolate all through it.",
                    price:       249,
                    status:      1)

item10 = Item.create(title:      "Peppermint Stick",
                    description: "Available year-round, this pink peppermint
                    ice cream has tiny pieces of peppermint candies sprinkled
                    in.",
                    price:       249,
                    status:      1)

item11 = Item.create(title:      "Buckeye",
                    description: " One of our Top 10 flavors, we take peanut
                    butter ice cream and ripple in chocolate sauce and mini
                    buckeye candies.",
                    price:       249,
                    status:      1)

item12 = Item.create(title:      "Moose Tracks",
                    description: "Similar to Buckeye and a Top 10 favorite,
                    this vanilla based flavor has a chocolate ripple and mini
                    peanut butter cups in it.",
                    price:       249,
                    status:      1)

item13 = Item.create(title:      "Cookies 'N' Cream",
                    description: "We add lots of sandwich cookie pieces to our
                    vanilla ice cream to create this classic flavor.",
                    price:       249,
                    status:      1)

item14 = Item.create(title:      "Peanut Butter",
                    description: "This creamy flavor has lots of peanut butter
                    sauce and our famous crushed nuts in it, to give it a rich
                    peanutty taste.",
                    price:       249,
                    status:      1)

item15 = Item.create(title:      "Cookie Dough",
                    description: "We start with cookie dough flavored ice cream
                    and mix in bits of chocolate chip cookie dough and mini
                    chocolate morsels.",
                    price:       249,
                    status:      1)

item16 = Item.create(title:      "Toffee Caramel Crunch",
                    description: "Another one of our Top 10 flavors, this
                    toffee based ice cream has a rich caramel swirl with
                    slivers of almond and chocolate toffee pieces in it.",
                    price:       249,
                    status:      1)

item17 = Item.create(title:      "Coffee",
                    description: "This one will give you a caffeine kick since
                    it’s flavored with fresh ground coffee.",
                    price:       249,
                    status:      1)

item18 = Item.create(title:      "Strawberry",
                    description: "With ripe chunks of strawberries blended
                    throughout, this fruity flavor is a big seller year round.",
                    price:       249,
                    status:      1)

item19 = Item.create(title:      "Strawberry Cheescake",
                    description: "A cheesecake flavored ice cream with our
                    chunky strawberry sauce marbled in.",
                    price:       249,
                    status:      1)

item20 = Item.create(title:      "Lemon Custard",
                    description: "This French custard based ice cream has a
                    tangy lemon flavor.",
                    price:       249,
                    status:      1)

category1 = Category.create(id: 1,
                            title:       "Rockanillas",
                            description: "Yellow is the new black")

category2 = Category.create(title:       "Chocolate Yumm Yumm",
                            description: "The flavor of love")

category3 = Category.create(title:       "Strawbellisima",
                            description: "Pink for you")

category4 = Category.create(title:       "Animalism!",
                            description: "Flavors from the farm")

category5 = Category.create(title:       "Badass",
                            description: "Just for real rockstars")

category1.items << item1  && item2  && item3  && item4
category2.items << item5  && item6  && item7  && item8
category3.items << item9  && item10 && item11 && item12
category3.items << item12 && item13 && item14 && item15
category4.items << item16 && item17 && item18 && item19 && item20

# Create the users
#
# user1 = User.create(first_name:      "Jeff",
#                     last_name:       "Casimir",
#                     email:           "jeff@jumpstartlab.com"
#                     username:        "jeff",
#                     password_digest: "",
#                     salt:            "",
#                     address_id:      "",
#                     type:            "")
#
# user1 = User.create(first_name:      "Jorge",
#                     last_name:       "Tellez",
#                     email:           "jorge@jumpstartlab.com"
#                     username:        "jorge",
#                     password_digest: "",
#                     salt:            "",
#                     address_id:      "",
#                     type:            "")
#
# user1 = User.create(first_name:      "Josh",
#                     last_name:       "Cheek",
#                     email:           "josh@jumpstartlab.com"
#                     username:        "josh",
#                     password_digest: "",
#                     salt:            "",
#                     address_id:      "",
#                     type:            "")
#
# user1 = User.create(first_name:      "Rachel",
#                     last_name:       "Warbelow",
#                     email:           "rachel@jumpstartlab.com"
#                     username:        "rachel",
#                     password_digest: "",
#                     salt:            "",
#                     address_id:      "",
#                     type:            "")

puts "============= Seeding Data End ============="
