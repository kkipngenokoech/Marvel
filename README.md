# Marvel

an e-commerce website to buy marvel tshirts based on marvel characters

## rails g resource and rails g scaffold

rails g resource and rails g scaffold generates controllers views and models the only difference between the two is that scaffold goes an extra mile to generate forms for the views.

they also generate restful routes for one.

## devise

to install devise and use it in your system:

add the gem file in your [Gemfile](MarvelShop/Gemfile)

then you run `bundle install` this will install the gem from the ruby store for gems

then install the gem into your system:

`rails g devise:install`

then also generate views for devise - `rails g devise:views`
