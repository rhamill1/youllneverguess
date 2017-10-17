class IdeasController < ApplicationController
  include SimpleCaptcha::ControllerHelpers

  def new
     @idea = Idea.new
  end

  def create
    if simple_captcha_valid?
      @idea = Idea.create(idea_params)
      if @idea.save
        flash[:success] = 'Idea Created!'
        redirect_to root_path
      else
        flash[:error] = @idea.errors.full_messages.join(' ')
      end
    else
      redirect_to root_path
      flash[:notice] = "captcha did not match"
    end
  end


  private

    def idea_params
      params.require(:idea).permit(:idea_name, :description, :author)
    end

end
