class QuestionsController < ApplicationController
  def ask
  end

  def coach_answer(your_message)
    if your_message.end_with?('?')
      return 'Silly question, get dressed and go to work!'
    elsif your_message == 'I am going to work right now!'
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @response = coach_answer(params[:answer])
  end
end
