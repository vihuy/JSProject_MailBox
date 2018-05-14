class Category < ApplicationRecord
  has_many :my_mails, dependent: :destroy
end
