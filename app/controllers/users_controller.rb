class UsersController < ApplicationController
  def create
    user = User.new email:'frank@x.com', name: 'frank'
    if (user.save)
      p 'save 成功了'
      render json:user
    else 
      p 'save 失败了'
      render json: user.errors
    end

  end

  def show
    user = User.find_by_id params[:id]
    if user
      render json: user
    else 
      head 404
    end
    p '你访问了 show';
  end
end
