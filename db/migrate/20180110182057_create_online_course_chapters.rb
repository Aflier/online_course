class CreateOnlineCourseChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :online_course_chapters do |t|
      t.string :name
      t.integer :position
      t.string :description

      t.timestamps
    end
  end
end
