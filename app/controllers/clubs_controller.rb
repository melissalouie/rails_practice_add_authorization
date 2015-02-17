class ClubsController < ApplicationController

  def index
    redirect_to login_path unless current_student
    @clubs = current_student.clubs
  end

  def show
    @club = Club.find(params[:id])
    if !@club.students.find_by_id(current_student.id)
      render 'public/403.html'
    end
  end

end
