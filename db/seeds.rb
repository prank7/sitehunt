# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(user_id: 1, productname: "DoSelect", created_at: "2014-11-13 06:54:17", updated_at: "2014-11-13 06:54:17", url: "www.doselect.com", description: "Make the best hire.  Every time.", votedby: nil)
Product.create(user_id: 2, productname: "RideShare", created_at: "2014-11-13 06:52:30", updated_at: "2014-11-13 06:52:30", url: "www.rideshare.co", description: "find someone to share your cab", votedby: nil)
Product.create(user_id: 1, productname: "MoboCart", created_at: "2014-11-13 06:59:45", updated_at: "2014-11-13 06:59:45", url: "mobocart.bluemix.net", description: "Do smart Shopping", votedby: nil)
Product.create(user_id: 3, productname: "LiveSaver", created_at: "2014-11-13 06:58:42", updated_at: "2014-11-13 06:58:42", url: "www.livesaver.com", description: "Save Life in Emergency Situation", votedby: nil)
Product.create(user_id: 2, productname: "AIS", created_at: "2014-11-13 06:57:25", updated_at: "2014-11-13 06:57:25", url: "ais.bluemix.net", description: "Services at one platform", votedby: nil)
Product.create(user_id: 1, productname: "Rendal", created_at: "2014-11-13 06:56:22", updated_at: "2014-11-13 06:56:22", url: "rendal.bluemix.net", description: "Pushmessage", votedby: nil)
Product.create(user_id: 3, productname: "OfficeShare", created_at: "2014-11-13 06:55:26", updated_at: "2014-11-13 06:55:26", url: "http://officeshare.bluemix.net", description: "Everyone deserves a good office", votedby: nil)
Product.create(user_id: 1, productname: "SiteHunt", created_at: "2014-11-13 06:51:27", updated_at: "2014-11-13 07:21:09", url: "sitehunt.mybluemix.net", description: "Discover The Best New Indian Products Everyday", votedby: nil)


User.create(provider: "twitter", uid: "126558428", name: "Prashant Abhishek", image: "http://pbs.twimg.com/profile_images/1216194295/20-S", username: "dprank", description: "", token: nil, secret: nil, created_at: "2014-11-13 07:55:12", updated_at: "2014-11-13 07:55:18", email: "prashant.abhishek7g@gmail.com")
User.create(provider: "twitter", uid: "416840819", name: "Setu", image: "http://pbs.twimg.com/profile_images/378800000773813", username: "SetuSaurabh", description: "Running @rideshareus - Share an Airport Cab & Trave...", token: nil, secret: nil, created_at: "2014-11-13 07:56:34", updated_at: "2014-11-13 07:56:47", email: "setusetu@gmail.com")
User.create(provider: "twitter", uid: "84545367", name: "Vaibhav Mule", image: "http://pbs.twimg.com/profile_images/378800000726482", username: "VaibhavMule", description: "http//:http://t.co/D2nLAYFKKf", token: nil, secret: nil, created_at: "2014-11-13 07:57:28", updated_at: "2014-11-13 07:57:40", email: "vaibhavmule@gmail.com")