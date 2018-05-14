class Category < ApplicationRecord
  has_many :mails, dependent: :destroy
end
