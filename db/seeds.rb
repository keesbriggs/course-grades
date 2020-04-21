# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    teachers = User.create([
      { name: 'Abhinav Trivedi', email: 'atrivedi@mdsol.com', user_type: 'Teacher' },
      { name: 'Kees Briggs', email: 'kees.briggs@gmail.com', user_type: 'Teacher' }
    ])

    students = User.create([
      { name: 'Sreekanth Devarapally', email: 'sdevarapally@gmail.com', user_type: 'Student' },
      { name: 'Rick Moranis', email: 'rmoranis@yahoo.com', user_type: 'Student' },
      { name: 'Bill Murray', email: 'bmurray@yahoo.com', user_type: 'Student' }
    ])

    courses = Course.create([
      { name: 'English 101' },
      { name: 'English 102' },
      { name: 'English 103' },
      { name: 'English 104' },
      { name: 'English 110' },
      { name: 'English 111' },
      { name: 'English 121' },
      { name: 'English 131' },
      { name: 'English 141' },
      { name: 'English 151' },

      { name: 'Computer Science 101' },
      { name: 'Computer Science 102' },
      { name: 'Computer Science 103' },
      { name: 'Computer Science 110' },
      { name: 'Computer Science 111' },
      { name: 'Computer Science 201' },
      { name: 'Computer Science 301' },
      { name: 'Computer Science 401' },
      { name: 'Computer Science 501' }
    ])

    enrollments = Enrollment.create([
      { user_id: 3, course_id: 2, score: 67 },
      { user_id: 3, course_id: 3, score: 78 },
      { user_id: 3, course_id: 6, score: 89 },

      { user_id: 4, course_id: 1, score: 98 },
      { user_id: 4, course_id: 2 },
      { user_id: 4, course_id: 3 },

      { user_id: 5, course_id: 3 },
      { user_id: 5, course_id: 4 },
      { user_id: 5, course_id: 1 },
    ])