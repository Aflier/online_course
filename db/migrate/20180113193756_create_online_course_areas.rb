class CreateOnlineCourseAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :online_course_areas do |t|
      t.string :name

      t.timestamps
    end
  end
end
