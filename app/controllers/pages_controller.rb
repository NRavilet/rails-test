class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batmanvssuperman
  end

  def save_heroe
    if params[:heroe].present? && params[:email].present? 
      Votes.create(
        heroe: params[:heroe],
        email: params[:email],
      )

      redirect_to pages_votes_path, notice: 'Voted'
    else
      flash[:alert] = 'Please vote!'
      render :votes
    end
  end
end
