class Question < ApplicationRecord
  belongs_to :quiz

  QUESTION_TYPES = %w[mcq boolean text]
end
