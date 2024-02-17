class QuestionsController < ApplicationController
  def ask
    # This action will render a view
  end

  def answer
    question = params[:question]
    @answer = coach_logic(question)
  end

  private

  def coach_logic(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
