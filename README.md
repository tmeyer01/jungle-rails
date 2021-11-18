# Jungle

A mini e-commerce application built with Rails 4.2.  

## Features 

### Product selection  
- Browse and add products to cart 
### Checkout  
- See details of order and complete purchase using Stripe 
### User Authentication 
- Sign up / Login  
### Admin Privilege 
- Add, Edit, Delete Products 

### Final Product

!["mainpage"](public/images/MainPage.png)
!["cart"](public/images/Cart.png)
!["pay"](public/images/Pay.png)

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


## Testing 
App teested using 
* RSpec (unit testing)
* Capybara & Poltergeist (intergration testing)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

