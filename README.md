# Astrogram

A microblog for astronauts, wherein they're able to communicate with family back on their home planet (whatever it may be,) as well as share updates with planet-bound followers.

When a user signs up, they verify their email address during registration. If their email domain corresponds to a verified space agency, they're verified as an astronaut (list of agencies contained in the app/services/email_verifier.rb file). Astronauts are able to create new blog posts, and receive the badge of their space agency on their profile page.

In order to subscribe to an astronauts posts, any user can follow an astronaut. A user's landing page will be populated with posts from their followed posters, and any user is able to respond to a post with their own messages.

When an astronaut posts, they're able to give the approximate space coordinates that they're posting from. This is represented in spherical coordinates (polar, azimuth and radial), as well as the stellar body which they're in orbit around or in transit to. The stardate of their post is also displayed thusly.

## Installation

Clone this repo by typing `git clone git@github.com:WerkerM/Astrogram.git`t
Then change into the directory just created, and type `bundle install`

`Bundler` gem is required.
Ruby 2.3.0 and higher recommended.
PostgreSQL required for existing configuration, though the database could easily be adapted to other architectures with some tweaking of the config files.

## Database
To initialize Postgres database, type:
`rake db:create`
`rake db:migrate`
`rake db:seed`

(the command `rails` can replace `rake`, as this project was created in Rails 5.)

The application comes with an extensive seed file of existing users and posts.
