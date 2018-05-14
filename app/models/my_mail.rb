class MyMail < ApplicationRecord
  self.table_name = "mails"
  belongs_to :user
  belongs_to :category
end
