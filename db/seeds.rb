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
      { name: 'English 101', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'English 102', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'English 103', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'English 104', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'English 110', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'English 111', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'English 121', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'English 131', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'English 141', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'English 151', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'English 441', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },

      { name: 'Computer Science 101', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'Computer Science 102', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'Computer Science 103', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'Computer Science 110', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'Computer Science 111', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'Computer Science 201', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'Computer Science 301', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'Computer Science 401', teacher_id: User.where(name: 'Abhinav Trivedi').first.id },
      { name: 'Computer Science 501', teacher_id: User.where(name: 'Kees Briggs').first.id },
      { name: 'Computer Science 401', teacher_id: User.where(name: 'Abhinav Trivedi').first.id }
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