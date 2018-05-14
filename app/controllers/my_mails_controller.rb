class MyMailsController < ApplicationController
  layout 'user'
  def index

  end

  def inbox
    @inboxes = Mail.where(category_id:1)
  end

  def sendbox
    @send_boxes = Mail.where(category_id:2)
  end

  def draft
    @drafts = Mail.where(category_id:3)
  end

  def read
    @read = Mail.where(category_id:1, is_readed:true)
  end

  def unread
     @unread = Mail.where(category_id:1, is_readed:false)
  end
end
