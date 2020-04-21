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
git clone https://github.com/keesbriggs/course-grades.git
```

##### Initial setup: 

```
# cd into course-grades folder
# create the database, migrate and seed it:

rake db:create db:migrate db:seed

# start the server:

rails s

```

##### Logging in:

Go to `https://localhost:3000`

The database is seeding this application to use my gmail account as well as yours (if you are reading this, you know who you are) as Teacher accounts, which are users of a specific type. Logging in with my email or yours will give you an 'admin' account which will grant you access to edit/destroy powers not available to Students. As requested, there is no password associated, and anyone can create an account based on an email address.


##### Objects:

There are User objects (which can have a user_type of 'Teacher' or 'Student'), Course Objects (which have a name and a Teacher associated), Enrollment objects (a relationship between a Student and a Course, which is where Scores between 0 and 100 are stored).

##### Abilities:

A Student should be able to enroll or de-enroll in a course. They can see courses they are enrolled in. They can not delete or edit their scores for a course, or other users. A Teacher is an Admin, however, and can do anything.
