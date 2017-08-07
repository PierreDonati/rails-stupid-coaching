class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  def ask

  end

  def coach_answer(question)
     if question.downcase == "i am going to work right now!"
      return ""
    elsif question.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end


