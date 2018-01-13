class CreateOnlineCourseTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :online_course_topics do |t|
      t.string :name
      t.text :content
      t.references :subject

      t.timestamps
    end
  end
end
