# README


This is a Test with Rails 7, ruby 3.1.2 and  bootstrap 5 with postgresql
running on docker
How to run

```
docker compose build
docker compose run --rm web bin/rails db:setup
docker compose up
```

To run tests
```
docker-compose exec web bundle exec rspec
```


I used Dry principle for this challenge, i didnt have the time to make a more complete code, I manage to create the models with some methods,
configure docker and create the controller to respond with the merchant or merchants disbursements
I have the data structure for merchants, shoppers, orders and disbursements
I did basic testing for the models(validations and Associations) and controller methods
I got the structure for the worker on sidekiq to calculate disbursements 

I do know that i have some issues with the docker configuration, I didnt fix them because that would have take me more time to solve


I got all this within the 3 hours margin