class HomeController < ApplicationController
  before_action :require_login, only:[:write]
  def index
    @comments = Comment.last(30).reverse
    @students = Student.last(1).reverse
  end
  
  def write
    comment = Comment.new(content: params[:content],
                          user: current_user)
    comment.save
    redirect_to '/home/index'
  end
  
  def stu
    stu = Student.new(number: params[:number])
    stu.save
    redirect_to '/home/index'
  end
end
