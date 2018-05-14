class MyMailsController < ApplicationController
  layout 'user'
  def index

  end

  def inbox
    @inboxes = MyMail.where(category_id:1)
  end

  def sendbox
    @send_boxes = MyMail.where(category_id:2)
  end

  def draft
    @drafts = MyMail.where(category_id:3)
  end

  def read
    @read = MyMail.where(category_id:1, is_readed:true)
  end

  def unread
     @unread = MyMail.where(category_id:1, is_readed:false)
  end
end
