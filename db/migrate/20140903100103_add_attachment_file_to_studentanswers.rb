class AddAttachmentFileToStudentanswers < ActiveRecord::Migration
  def self.up
    change_table :student_answers do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :student_answers, :file
  end
end
