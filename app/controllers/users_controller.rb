class UsersController < ApplicationController
  layout 'user'
  before_action :authenticate_user!

  def index
    @mails = MyMail.all
  end

end
