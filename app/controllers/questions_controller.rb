class QuestionsController < ApplicationController
  #  will display the question you ask your coach as well as his answer
  def ask
  end

  # The controller will need to read the question from params and compute an
  # instance variable @answer for the view to display.
  def answer
    @my_answer = params[:answer]

    if @my_answer.ends_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @my_answer == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
