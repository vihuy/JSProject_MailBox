class MyMailsController < ApplicationController
  layout 'user'
  def index

  end

  def new
    @mail = MyMail.new
  end

  def create
    object = User.find_by_email(params[:my_mail][:object_id])
    @category = Category.find 2
    @category.my_mails.create(user_id:current_user.id,subject: params[:my_mail][:subject],content:params[:my_mail][:content],object_id: object.id)

  end

  def inbox
    @inboxes = MyMail.where(category_id:2,object_id:current_user.id)
  end

  def sendbox
    @send_boxes = MyMail.where(category_id:2,user_id:current_user.id)
  end

  def draft
    @drafts = MyMail.where(category_id:3,user_id:current_user.id)
  end

  def read
    @read = MyMail.where(category_id:2,is_readed:true,object_id:current_user.id)
  end

  def unread
    @unread = MyMail.where(category_id:2, is_readed:false,object_id:current_user.id)
  end

end
