class CreateOnlineCourseSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :online_course_subjects do |t|
      t.string :name
      t.references :area

      t.timestamps
    end
  end
end
