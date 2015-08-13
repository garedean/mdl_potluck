# Potluck in the Park Inventory System

An inventory organization system targeted towards soup kitchens and food banks that receive, store, and prepare items whose quantities are not easily defined.

## View it on Heroku
------
https://potluckapp.herokuapp.com/

## Authors
------
Garrett Olson & Michael Yanchar
at EyeCue Lab

http://www.eyecuelab.com/

## Installation

* `git clone <repository-url>` this repository
* change into the new directory
* `bundle`

## Running / Development

* start server client
* `rails s`
* Visit the app at [http://localhost:3000]

## Building

* `rake db:create1`
* `rake db:migrate`
* `rake db:seed`
or
* `rake db:reset`

## Site Features

### Store
  
* Search by ID
* View Recently Created Items
* View Unlocated Items
* Add New Item
  
### Prepare

* Search By ID
* Search by Location
* Search by Category
* View Expiring Items
* Cart Items
  -Use / Empty Cart

### Admin

* Manage Users
  - Create / Delete / Edit User
* Manage Locations
  - Create / Delete / Location
* Manage Categories
  - Create / Delete / Categories
* Inventory Summary
* Expired Summary
* Used Items Summary

