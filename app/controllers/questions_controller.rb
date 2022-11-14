class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @reply = if @question == 'I am going to work right now!'
               'Great!'
             elsif @question[-1] == '?'
               'Silly question, get dressed and go to work!'
             else
               'I don\'t care, get dressed and go to work!'
             end
  end
end
