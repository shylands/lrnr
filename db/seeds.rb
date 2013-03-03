# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
    {username: 'tommy', email: 'hi@tommyp.org', password: 'password', password_confirmation: 'password'},
    {username: 'shylands', email: 'shylands@rumblelabs.com', password: 'password', password_confirmation: 'password'},
    {username: 'andy', email: 'andy@grow.com', password: 'password', password_confirmation: 'password'},
    {username: 'johnny', email: 'jonathan_alban@me.com', password: 'password', password_confirmation: 'password'},
    {username: 'matt', email: 'mwc0000@gmail.com', password: 'password', password_confirmation: 'password'},
    {username: 'hamstarr', email: 'shamilton@rumblelabs.com', password: 'password', password_confirmation: 'password'},
    {username: 'davidjrice', email: 'drice@rumblelabs.com', password: 'password', password_confirmation: 'password'},
    {username: 'wakeuphate', email: 'mleetch@rumblelabs.com', password: 'password', password_confirmation: 'password'},
    {username: 'terminaldude', email: 'jrowe@rumblelabs.com', password: 'password', password_confirmation: 'password'},
    {username: 'rory', email: 'rorymccawl@gmail.com', password: 'password', password_confirmation: 'password'}
  ])


tags = Tag.create([
  {title: "tag1"},
  {title: "tag2"}
  {title: "tag3"}
])

Post.create(title: 'Really nice tutorial on HTML', url: 'http://google.com', user: User.all.sample, topic: Topic.first)
Post.create(title: 'Some useful tips when working with CSS', url: 'http://bbc.co.uk', user: User.all.sample, topic: Topic.first)
Post.create(title: 'How to work with Bootstrap', url: 'http://twitter.github.com/bootstrap', user: User.all.sample, topic: Topic.first)