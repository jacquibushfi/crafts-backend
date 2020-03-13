# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c = Craft.create(name: "Wire Weaving")
c1 = Craft.create(name: "Jewelry")
c2 = Craft.create(name: "Crochet")
w1 = Supply.create(craft_id: 1, description: "20 Ga copper wire", vendor: "Wire Whimsie", price: 15.00)
w2 = Supply.create(craft_id: 1, description: "22 Ga sterling silver wire", vendor: "Wire Whimsie", price: 80.00)
J1 = Supply.create(craft_id: 2, description: "Moonstone", vendor: "Adam's Rocks", price: 10.00)
J2 = Supply.create(craft_id: 2, description: "Clear AB Swarovski bicones", vendor: "FireMountain Gems", price: 10.00)
y1 = Supply.create(craft_id: 3, description: "Gray yarn Redheart", vendor: "Michaels", price: 3.50)
y2 = Supply.create(craft_id: 3, description: "G Crochet Hook", vendor: "JoAnn's", price: 5.50)