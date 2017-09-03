class IdeasController < ApplicationController

  def new
     @idea = Idea.new
  end

  def create
    @idea = Idea.create(idea_params)
    if @idea.save
      flash[:success] = 'idea Created!'
      redirect_to root_path
    else
      flash[:error] = @idea.errors.full_messages.join(' ')
    end
  end


  private

    def idea_params
      params.require(:idea).permit(:idea_name, :description, :author)
    end

end
