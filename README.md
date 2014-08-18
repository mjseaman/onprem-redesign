#OnPrem Redesign

This is the redesign of the OnPrem website. Please don't use without permission.

##Setup

* Make sure you have Ruby 1.9.3, Rails ~3.2.13, [ImageMagick](http://cactuslab.com/imagemagick/), the [Nokogiri gem including dependencies](http://nokogiri.org/tutorials/installing_nokogiri.html), and [Postgresql](https://www.codefellows.org/blog/how-to-install-postgresql) installed and running on your machine.
* Clone this repo.
* Navigate to the root directory of the app in your terminal and run the following. If you have installation issues it is probably due to one of the dependencies above not being installed correctly.
```
bundle install
```
* Run the following to get your Postgres database up and seeded:
```
rake db:setup
```
* Run the following to start your server:
```
rails s
```

Note: if you want to run RSPEC, make sure to run the following to set up your test environment:
```
rake db:test:prepare
```

Happy coding!
