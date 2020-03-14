# README

This repo is for the api portion of my React/Redux project. The data contianed is for Crafts and associated Supplies.

* The gem "rack-cors", "active_model_serializer" and "pry" are included in the gemfile.

In config/initializers the cors.rb file has had the middleware config section uncommented and the origins set to "*".

In config/puma.rb the fetch port was changed to 3001 to allow the api to function on one port and the frontend on another (3000)

* To create the databases, please run "rails db:migrate" 

* To see the databases, please run "rails db:seed"

To start the api, please run "rails s".