# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.6.3

* Configuration: The database is pg, set the database credentials as seen in the application-example.yml file in the
config folder

* Database creation: rails db:setup

* How to run the test suite: ```rspec spec```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions: There is a .dat file in the tasks/assests folder already but to test with a different file, comment out the
create_league_table.rake file, delete the old .dat file, upload a new one, and run rake db:reset.

When that's done, uncomment the create_league_table.rake file and run ``rake create_leage_table``

* ...
