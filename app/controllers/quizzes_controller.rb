class QuizzesController < ApplicationController
  def opening
  end
  def select
    genre_id= params[:genre_id]
    @quizes = Quiz.where(genre_id: genre_id)
  end
  def show
    @quiz = Quiz.find params[:id]
  end
  def answer
  end
  def result
    @quiz = Quiz.find params[:id]
    logger.debug params[:answer]
    logger.debug @quiz.answer
    if params[:answer].to_i == @quiz.answer
       @text = '正解'
    else 
       @text = '不正解'  
    end 
    @answer_text
    case @quiz.answer
    when 1
    @answer_text = @quiz.choice_1
    when 2
    @answer_text = @quiz.choice_2
    when 3
    @answer_text = @quiz.choice_3
    when 4
    @answer_text = @quiz.choice_4
    end
  end
  def new
    @quiz = Quiz.new
  end
  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user_id = current_user.id
    if @quiz.save
      logger.debug "if"
            redirect_to quizzes_opening_path
    else
      logger.debug "else"
         render :new
    end
  end
  private
  def quiz_params
    params.require(:quiz).permit(:genre_id, :title, :question, :choice_1, :choice_2, :choice_3,:choice_4,:answer)
  end
end
