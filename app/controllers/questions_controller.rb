class QuestionsController < ApplicationController
  def home
  end

  def ask

  end

  def answer
    question = params[:answer]

    @answer = coach_answer(question)
    @question = question
  end
 private
  def coach_answer(question)
    if question.end_with?("?")
      "Silly question, get dressed and go to work!"
    elsif question == "Im working"
        return "great, see ya"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
