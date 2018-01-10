require 'test_helper'

module OnlineCourse
  class ChaptersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @chapter = online_course_chapters(:one)
    end

    test "should get index" do
      get chapters_url
      assert_response :success
    end

    test "should get new" do
      get new_chapter_url
      assert_response :success
    end

    test "should create chapter" do
      assert_difference('Chapter.count') do
        post chapters_url, params: { chapter: { description: @chapter.description, name: @chapter.name, position: @chapter.position } }
      end

      assert_redirected_to chapter_url(Chapter.last)
    end

    test "should show chapter" do
      get chapter_url(@chapter)
      assert_response :success
    end

    test "should get edit" do
      get edit_chapter_url(@chapter)
      assert_response :success
    end

    test "should update chapter" do
      patch chapter_url(@chapter), params: { chapter: { description: @chapter.description, name: @chapter.name, position: @chapter.position } }
      assert_redirected_to chapter_url(@chapter)
    end

    test "should destroy chapter" do
      assert_difference('Chapter.count', -1) do
        delete chapter_url(@chapter)
      end

      assert_redirected_to chapters_url
    end
  end
end
