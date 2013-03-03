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

post1 = Post.new(title: 'Really nice tutorial on HTML', url: 'http://google.com', user: User.all.sample)
post1.tag_list = 'html, web, design'
post1.save
post2 = Post.new(title: 'Some useful tips when working with CSS', url: 'http://bbc.co.uk', user: User.all.sample)
post2.tag_list = 'CSS, web, design'
post2.save
post3 = Post.new(title: 'How to work with Bootstrap', url: 'http://twitter.github.com/bootstrap', user: User.all.sample)
post3.tag_list = 'web, boostrap, css'
post3.save
