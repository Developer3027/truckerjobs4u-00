# TRUCKERJOBS4U

This is a working landing page concept for TRUCKERJOBS4U. Built in Rails 7 with Ruby 3. I am using postgresql for database, tailwindcss for style, and devise for auth. I used elements from flowbite to get the design together quickly as there was no initial design concept. The page needs to accomplish a few things. 

* One it needs to gather the bare minimum information from a driver who is job hunting, 
* Two it needs to collect email address of drivers job hunting. 
* Third it needs to send notifications to the admin and driver. The admin needs to get the info from the contact form. The driver needs a thank you. Notified through email. 
* Fourth, there needs to be a admin section that shows the gathered information with functionality to search, sort by date created, verify icon that emails were sent, delete option, and comment field for adding notes.

_Some functionality previously working has been removed._
* _The create user was removed for now, until the app is up as well._
* _PP check is no an option. If false the info is lost and return to page with alert message._
* _Thank you to driver does not link to app, until app is ready._

This page is one way to get to the app and is used to gather information.

Devise is used but users can not register. Use console to create admin with role of 1 or "admin" so emails can be sent. _WIll error is no admin present._

**Admin**

The admin dashboard has two parts. Small column for a list of newsletter emails and a large column for the leads - (landings), information. The leads have pagination through the pagy gem. 

Here is the **Hero section** of the landing page. The header is minimal and stuck to the top. Logo links to it's self. CTA links to contact form at end of page.

![Screenshot of Hero on landing page](/app/assets/images/hero.png)

Under the hero section is the **newsletter sign up**. This collects the email and a response email is sent. No account created. The Privacy Policy must be checked. Still working on sending notification of on checked. Default is true, refresh of page set to true.

![Screenshot of the Newsletter section on landing page](/app/assets/images/newsletter.png)

**About section** gives a brief introduction to TRUCKERJOBS4U.

![Screenshot of the About section on landing page](/app/assets/images/about.png)

**Meet the team** section includes cards to introduce who work for the driver.

![Screenshot of the team section on the landing page](/app/assets/images/team.png)

**Contact form** at the bottom of the page. This gathers the drivers name, email, phone, and location. Also includes the Privacy Policy check. On submit needs to send emails and create initial account.

![Screenshot of the contact form on the landing page](/app/assets/images/contact.png)


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

  * 3.1.4

* System dependencies
  * Needed to set up 2 client servers on DigitalOcean. Memory usage is high. Will update.

* Configuration

  * Postgresql - pg
  * Tailwindcss
  * Devise
  * Mailersend

* Database creation
  * bin/rails db:create
    * typical rails config for dev, test, prod.
      * landings table - contact form. (did not think that through)
      * newsletter_emails
      * users - for admin only currently

* Database initialization
  * I run linux, Pop Os, so linux gem is in place.
  * My system has no sudo user so I use the default for pg. Hence the extra config in the database.yml. The password and user are hard coded, also default for pg.

* How to run the test suite
  * Testing soon.

* Services (job queues, cache servers, search engines, etc.)
   *Setting up on render is straight forward. Nothing special about the landing page. No seed currently so need ssh to access to create admin. Admin is user with role admin. Two roles currently 0 = user, 1 = admin. Possible 3rd role of recruiter.

  **UPDATE**

  * Render does not have SMTP ports open. Switched to DigitalOcean. Using Mailersend for SMTP service and works fine on DigitalOcean. No users can be created. Use console to create admin. Admin required for email to work.

* Deployment instructions
  * Render pulls from github. Need to create the rails master key but really that is about it. Spin up a pg server on Render, grab the db internal url and slap it in the environment area of the web app and it is up.

  **update**

  * See update in services. Switched to DigitalOcean because Render does not support SMTP through port 587. Will ask for SECRET_KEY_BASE env variable for production run. I used the master key for it. Worked fine.



See the associated project for updates.
