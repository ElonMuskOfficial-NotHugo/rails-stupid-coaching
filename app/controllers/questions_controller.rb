class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    happy_answer = 'Great!'
    question_answer = 'Silly question, get dressed and go to work!'
    else_answer = 'I dont care, get dressed and go to work!'
    @response = if @question.present?
                  if @question == 'I am going to work'
                    happy_answer
                  elsif @question.end_with?('?')
                    question_answer
                  else
                    else_answer
                  end
                else
                  'You did not ask a question.'
                end
  end
end
