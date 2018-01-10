require 'test_helper'

module OnlineCourse
  class CourseChaptersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @course_chapter = online_course_course_chapters(:one)
    end

    test "should get index" do
      get course_chapters_url
      assert_response :success
    end

    test "should get new" do
      get new_course_chapter_url
      assert_response :success
    end

    test "should create course_chapter" do
      assert_difference('CourseChapter.count') do
        post course_chapters_url, params: { course_chapter: { description: @course_chapter.description, name: @course_chapter.name, position: @course_chapter.position } }
      end

      assert_redirected_to course_chapter_url(CourseChapter.last)
    end

    test "should show course_chapter" do
      get course_chapter_url(@course_chapter)
      assert_response :success
    end

    test "should get edit" do
      get edit_course_chapter_url(@course_chapter)
      assert_response :success
    end

    test "should update course_chapter" do
      patch course_chapter_url(@course_chapter), params: { course_chapter: { description: @course_chapter.description, name: @course_chapter.name, position: @course_chapter.position } }
      assert_redirected_to course_chapter_url(@course_chapter)
    end

    test "should destroy course_chapter" do
      assert_difference('CourseChapter.count', -1) do
        delete course_chapter_url(@course_chapter)
      end

      assert_redirected_to course_chapters_url
    end
  end
end
