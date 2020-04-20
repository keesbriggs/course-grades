# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    admins = User.create[
      { name: 'Abhinav Trivedi', email: 'atrivedi@mdsol.com', user_type: 'Admin' },
      { name: 'Kees Briggs', email: 'kees.briggs@gmail.com', user_type: 'Admin' },
      { name: 'Sreekanth Devarapally', email: 'sdevarapally@gmail.com', user_type: 'Student' },
      { name: 'Rick Moranis', email: 'rmoranis@yahoo.com', user_type: 'Student' },
      { name: 'Bill Murray', email: 'bmurray@yahoo.com', user_type: 'Student' }
    ]
