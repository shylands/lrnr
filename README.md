# LRNR

## Setup

  rvm install ruby-1.9.3-p392
  rvm use ruby-1.9.3-p392
  rvm gemset create rails-3-12
  rvm gemset use rails-3-12
  gem install bundler && bundle install
  rake db:setup

## Gotchyas

Had to use sqlite3 cause one of the guys couldn't get it installed.
There's some stuff going on with OpenSSL that doesn't need to happen. I'll figure that out later.