class MyMail < ApplicationRecord
  self.table_name = "mails"
  belongs_to :user
  belongs_to :category
  belongs_to :receiver, foreign_key: 'object_id',class_name: "User"
end
