require_dependency "online_course/application_controller"

module OnlineCourse
  class SubjectsController < ApplicationController
    before_action :set_subject, only: [:show, :edit, :update, :destroy]

    # GET /subjects
    def index
      @subjects = Subject.all
    end

    # GET /subjects/1
    def show
      @topics = @subject.topics
    end

    # GET /subjects/new
    def new
      @subject = Subject.new
    end

    # GET /subjects/1/edit
    def edit
    end

    # POST /subjects
    def create
      @area = Area.find(params[:area_id])
      @subject = @area.subjects.create!(subject_params)

      redirect_to @area
    end

    # PATCH/PUT /subjects/1
    def update
      if @subject.update(subject_params)
        redirect_to @subject, notice: 'Subject was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /subjects/1
    def destroy
      @subject.destroy
      redirect_to subjects_url, notice: 'Subject was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_subject
        @subject = Subject.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def subject_params
        params.require(:subject).permit(:name, :area_id)
      end
  end
end
