# README

The following should get you up and running with Acme High School's latest Course Enrollment System.

This system runs on Rails 2.3.1 and Ruby 5, as I ran into a bug with Rails 6 and Ruby 2.5.0 when trying to get the initial system running. I did report this.

#### Dependencies:
- Postgresql
- RVM

#### Installation:

##### Ruby/Rails:

You should use RVM or RBENV to get the appropriate Ruby and Rails versions. I used RVM - you can use the following:

```
rvm install "ruby-2.3.1"
rvm use ruby-2.3.1
rvm gemset create rails5
rvm gemset use rails5
gem install rails -v 5.2.4
```
##### Database:

You will need Postgres installed. If you do not have Postgresql installed, you may google some instructions on how to do so, or follow the instructions set here:

[Postgres Installation Instructions](https://www.2ndquadrant.com/en/blog/pginstaller-install-postgresql/)

##### Clone the repository:

```
git clone 
```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
