# TRUCKERJOBS4U

![Screenshot of Hero on landing page](/app/assets/images/hero.png)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  3.1.4

* System dependencies

* Configuration
  Postgresql - pg
  Tailwindcss
  Devise

* Database creation
  bin/rails db:create
    typical rails config for dev, test, prod.
      landings table - contact form. (did not think that through)
      newsletter_emails
      users

* Database initialization
  I run linux, Pop Os, so linux gem is in place.
  My system has no sudo user so I use the default for pg. Hence the extra config in the database.yml. The password and user are hard coded, also default for pg.

* How to run the test suite
  Testing soon.

* Services (job queues, cache servers, search engines, etc.)
  Setting up on render is straight forward. Nothing special about the landing page. No seed currently so need ssh to access to create admin. Admin is user with role admin. Two roles currently 0 = user, 1 = admin. Possible 3rd role of recruiter.

* Deployment instructions
  Render pulls from github. Need to create the rails master key but really that is about it. Spin up a pg server on Render, gran the bd internal url and slap it in the environment area of the web app and it is up.

* ...
