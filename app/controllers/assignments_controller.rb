class AssignmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  # GET courses/1/assignments
  def index
    @assignments = @course.assignments.paginate(page: params[:page], per_page: 5)
  end

  # GET courses/1/assignments/1
  def show
  end

  # GET courses/1/assignments/new
  def new
    @assignment = @course.assignments.build
  end

  # GET courses/1/assignments/1/edit
  def edit
  end

  # POST courses/1/assignments
  def create
    @assignment = @course.assignments.build(assignment_params)

    if @assignment.save
      redirect_to(@assignment.course)
    else
      render action: 'new'
    end
  end

  # PUT courses/1/assignments/1
  def update
    if @assignment.update(assignment_params)
      redirect_to(@assignment.course)
    else
      render action: 'edit'
    end
  end

  # DELETE courses/1/assignments/1
  def destroy
    @assignment.destroy

    redirect_to (@assignment.course)
  end
  
  def count_time 
    starting = Process.clock.gettime(Process::CLOCK_MONOTONIC)
    ending = Process.clock.gettime(Process::CLOCK_MONOTONIC)
    elapsed = ending - starting
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_assignment
      @assignment = @course.assignments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assignment_params
      params.require(:assignment).permit(:name, :description, :status, :date, :complete_time, :course_id)
    end
end
