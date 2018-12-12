# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# pub-sub-sidekiq-asynchronous

### rails model generation 
```
rails new PROJECT_NAME
$ cd PROJECT_NAME
$ rails generate model ad \
    name:string \ 
    description:text \
    price:decimal \
    seller_id:integer \
    email:string img_url:string
```

### model association command
```
rails g migration AddModelName1ToModelName2 ModelName1:references
```
https://www.sitepoint.com/brush-up-your-knowledge-of-rails-associations/
