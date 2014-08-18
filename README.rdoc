==OnPrem Redesign

This is the redesign of the OnPrem website. Please don't use without permission.

===Setup

1. Make sure you have Ruby 1.9.3, Rails ~3.2.13, ImageMagick, the Nokogiri gem including dependencies, and Postgresql installed and running on your machine.
2. Clone this repo.
3. Navigate to the root directory of this repo in your terminal and run the following. If you have installation issues it is probably due to one of the dependencies above not being installed correctly.
```
bundle install
```
4. Run the following to get your Postgres database up and seeded:
```
rake db:setup
```
5. Run the following to start your server:
```
rails s
```

Note: if you want to run RSPEC, make sure to run the following to set up your test environment:
```
rake db:test:prepare
```
