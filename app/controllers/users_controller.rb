class UsersController < ApplicationController
  layout 'user'

  def index
    @mails = Mail.all
  end

end
