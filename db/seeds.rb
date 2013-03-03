# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
    {username: 'tommy', email: 'hi@tommyp.org', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'shylands', email: 'shylands@rumblelabs.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'andy', email: 'andy@grow.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'johnny', email: 'jonathan_alban@me.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'matt', email: 'mwc0000@gmail.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'hamstarr', email: 'shamilton@rumblelabs.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'davidjrice', email: 'drice@rumblelabs.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'wakeuphate', email: 'mleetch@rumblelabs.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'terminaldude', email: 'jrowe@rumblelabs.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'rory', email: 'rorymccawl@gmail.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'},
    {username: 'holsee', email: 'holsee@gmail.com', password: 'password', password_confirmation: 'password', twitter: 'twitterusername', website: 'http://website.com/'}
  ])

post1 = Post.new(title: 'Really nice tutorial on HTML', url: 'http://google.com', user: User.all.sample)
post1.tag_list = 'beginner, html, web, design'
post1.save

post2 = Post.new(title: 'Some useful tips when working with CSS', url: 'http://bbc.co.uk', user: User.all.sample)
post2.tag_list = 'intermediate, CSS, web, design'
post2.save

post3 = Post.new(title: 'How to work with Bootstrap', url: 'http://twitter.github.com/bootstrap', user: User.all.sample)
post3.tag_list = 'intermediate, beginner, web, boostrap, css'
post3.save

post4 = Post.new(title: 'HTML Semantics', url: 'http://google.com', user: User.all.sample)
post4.tag_list = 'html, semantic'
post4.save

post5 = Post.new(title: 'CSS3 Gradients', url: 'http://google.com', user: User.all.sample)
post5.tag_list = 'css, styling, web, design, web design'
post5.save

post6 = Post.new(title: 'Microformats', url: 'http://google.com', user: User.all.sample)
post6.tag_list = 'html, good practices, microformats, intermediate'
post6.save

post7 = Post.new(title: 'Controllers in Rails', url: 'http://google.com', user: User.all.sample)
post7.tag_list = 'mvc, ruby on rails, rails, beginner, css'
post7.save

post8 = Post.new(title: 'Bottle Framework', url: 'http://google.com', user: User.all.sample)
post8.tag_list = 'intermediate, python, framework'
post8.save

post9 = Post.new(title: 'CSS Dropdown Menus', url: 'http://google.com', user: User.all.sample)
post9.tag_list = 'styling, css'
post9.save

post10 = Post.new(title: 'Model in Rails', url: 'http://google.com', user: User.all.sample)
post10.tag_list = 'mvc, beginner, rails, ruby'
post10.save

post11 = Post.new(title: 'Github Tutorial', url: 'http://google.com', user: User.all.sample)
post11.tag_list = 'beginner, programming, version control'
post11.save

post12 = Post.new(title: 'Caching', url: 'http://google.com', user: User.all.sample)
post12.tag_list = 'html5, caching, advanced'
post12.save

post13 = Post.new(title: 'http://rumblelabs.com/blog/how-to-go-from-being-a-rails-newb-to-being-a-rails-semi-pro', url: 'http://rumblelabs.com/blog/how-to-go-from-being-a-rails-newb-to-being-a-rails-semi-pro', user: User.all.sample)
post13.tag_list = 'beginner, programming, rails, web development, back-end'
post13.save

post14 = Post.new(title: 'Roasted Vegetable and Goat Cheese Terrine', url: 'http://www.foodnetwork.com/recipes/emeril-lagasse/roasted-vegetable-and-goat-cheese-terrine-recipe/index.html', user: User.all.sample)
post14.tag_list = 'intermediate, goats cheese, recipes, cooking, food'
post14.save

post15 = Post.new(title: 'CAE Practice Tests', url: 'http://www.flo-joe.co.uk/cae/students/tests/pt1index.htm', user: User.all.sample)
post15.tag_list = 'advanced, cae, english'
post15.save

post16 = Post.new(title: 'What Is A Business Model?', url: 'http://www.slideshare.net/Alex.Osterwalder/what-is-a-business-model', user: User.all.sample)
post16.tag_list = 'beginner, entrepreneur, networking, business modelling, business'
post16.save

















