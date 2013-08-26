def make_survey_creators(num)
  num.times do
    user = make_user
    user.created_surveys << make_survey
    user.created_surveys << make_survey
    user.save
    puts user
  end
end

def make_survey_takers(num)
  num.times do
    make_user.save
  end
end

def all_users_take_all_surveys
  User.all.each do |user|
    user_take_all_surveys(user)
  end
end

def make_user
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  User.new(name: first + " " + last,
           email: first + "." + last + "@example.com",
           password: "password",
           password_confirmation: "password")
end

def make_survey
  survey = Survey.new(title: Faker::Company.bs)
  3.times do 
    survey.questions << make_question_with_possible_answers
  end
  2.times do
    survey.questions << make_question_without_possible_answers
  end
  survey
end  

def make_question_with_possible_answers
  question = Question.new(question_text: Faker::Company.catch_phrase)
  4.times do 
    question.possible_answers << make_possible_answer
  end
  question
end

def make_possible_answer
  PossibleAnswer.new(answer_text: Faker::Company.bs)
end

def make_question_without_possible_answers
  Question.new(question_text: Faker::Company.catch_phrase)
end

def user_take_all_surveys(user)
  Survey.all.each do |survey|
    take_survey(user, survey)
  end
end

def take_survey(user, survey)
  survey.questions.each do |question|
    answer_question(user, question)
  end
  survey.save
end

def answer_question(user, question)
  if(question.possible_answers)
    question.answers.create(user: user, possible_answer: question.possible_answers.sample)
  else
    question.answers.create(user: user, answer_text: Faker::Company.bs)
  end
end

make_survey_creators(5)
make_survey_takers(20)
all_users_take_all_surveys
