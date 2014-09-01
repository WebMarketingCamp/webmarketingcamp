class AccountsController < ApplicationController

  before_action :authenticate_user!

  def show

    @user = current_user

    @student_answers = StudentAnswer.where(student_id: current_user.id)

    @mentor_assignments = Assignment.where(owner_id: current_user.id)

    @mentor_questions = Question.where(assignment_id: @mentor_assignments)

    @mentor_student_answers = StudentAnswer.where(question_id: @mentor_questions)

  end

  def reviews
    @student_answers = StudentAnswer.where(student_id: current_user.id)

    @mentor_assignments = Assignment.where(owner_id: current_user.id)

    @mentor_questions = Question.where(assignment_id: @mentor_assignments)

    @mentor_student_answers = StudentAnswer.where(question_id: @mentor_questions)

    ## MentorReview.last.question.assignment.owner

  end

  def questions

    @mentor_assignments = Assignment.where(owner_id: current_user.id)
    @mentor_questions = Question.where(assignment_id: @mentor_assignments)

    @student_answers = StudentAnswer.where(student_id: current_user.id)

  end

end