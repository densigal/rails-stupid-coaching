class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @query = params[:query]

    @coach = if @query == "I am going to work"
                @coach = 'Great!'
             elsif @query[-1, 1] == '?'
                   @coach = 'Silly question, get dressed and go to work!'
             else
                @coach = "I don't care, get dressed and go to work!"
             end
  end
end
