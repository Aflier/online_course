require_dependency "online_course/application_controller"

module OnlineCourse
  class TopicsController < ApplicationController
    before_action :set_topic, only: [:show, :edit, :update, :destroy]

    # GET /topics
    def index
      @topics = Topic.all
    end

    # GET /topics/1
    def show
    end

    # GET /topics/new
    def new
      @topic = Topic.new
    end

    # GET /topics/1/edit
    def edit
    end

    # POST /topics
    def create
      @subject = Subject.find(params[:subject_id])
      @topic = @subject.topics.create!(topic_params)

      redirect_to @subject
    end

    # PATCH/PUT /topics/1
    def update
      if @topic.update(topic_params)
        redirect_to @topic, notice: 'Topic was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /topics/1
    def destroy
      @topic.destroy
      redirect_to topics_url, notice: 'Topic was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_topic
        @topic = Topic.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def topic_params
        params.require(:topic).permit(:name, :subject_id, :content)
      end
  end
end
