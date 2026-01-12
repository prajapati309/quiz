puts "Seeding quizzes..."

Quiz.destroy_all

# QUIZ 1
quiz1 = Quiz.create!(title: "Ruby on Rails Basics")

quiz1.questions.create!([
  {
    question_type: "mcq",
    text: "Which command creates a new Rails app?",
    options: ["rails start", "rails new", "rails init", "rails create"],
    correct_answer: "rails new"
  },
  {
    question_type: "boolean",
    text: "Rails follows MVC architecture.",
    correct_answer: "true"
  },
  {
    question_type: "text",
    text: "Which file defines routes in Rails?",
    correct_answer: "routes.rb"
  },
  {
    question_type: "mcq",
    text: "Which ORM does Rails use?",
    options: ["Sequel", "Hibernate", "ActiveRecord", "Eloquent"],
    correct_answer: "ActiveRecord"
  },
  {
    question_type: "boolean",
    text: "Rails is written in Python.",
    correct_answer: "false"
  }
])

# QUIZ 2
quiz2 = Quiz.create!(title: "Web Fundamentals")

quiz2.questions.create!([
  {
    question_type: "mcq",
    text: "Which HTTP method is idempotent?",
    options: ["POST", "PUT", "GET", "PATCH"],
    correct_answer: "GET"
  },
  {
    question_type: "boolean",
    text: "HTML is a programming language.",
    correct_answer: "false"
  },
  {
    question_type: "text",
    text: "What does CSS stand for?",
    correct_answer: "cascading style sheets"
  },
  {
    question_type: "mcq",
    text: "Which status code means 'Not Found'?",
    options: ["200", "401", "403", "404"],
    correct_answer: "404"
  },
  {
    question_type: "boolean",
    text: "HTTPS is more secure than HTTP.",
    correct_answer: "true"
  }
])

# QUIZ 3
quiz3 = Quiz.create!(title: "General Programming")

quiz3.questions.create!([
  {
    question_type: "mcq",
    text: "Which data structure uses FIFO?",
    options: ["Stack", "Queue", "Tree", "Graph"],
    correct_answer: "Queue"
  },
  {
    question_type: "boolean",
    text: "Ruby is an interpreted language.",
    correct_answer: "true"
  },
  {
    question_type: "text",
    text: "What keyword is used to define a method in Ruby?",
    correct_answer: "def"
  },
  {
    question_type: "mcq",
    text: "Which symbol denotes instance variables in Ruby?",
    options: ["$", "@", "#", "&"],
    correct_answer: "@"
  },
  {
    question_type: "boolean",
    text: "Arrays in Ruby are zero-indexed.",
    correct_answer: "true"
  }
])

puts "Seeding complete!"
