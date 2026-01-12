class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.order(created_at: :desc)
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def submit
    quiz = Quiz.find(params[:id])
    answers = params[:answers] || {}

    score = 0

    quiz.questions.each do |q|
      user_answer = answers[q.id.to_s]
      correct = q.correct_answer.to_s.strip.downcase
      score += 1 if user_answer.to_s.strip.downcase == correct
    end

    submission = quiz.submissions.create!(
      answers: answers,
      score: score,
      total: quiz.questions.count
    )

    redirect_to quiz_path(quiz, submission_id: submission.id)
  end
end
