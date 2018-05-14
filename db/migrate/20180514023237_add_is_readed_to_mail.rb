class AddIsReadedToMail < ActiveRecord::Migration[5.1]
  def change
    add_column :mails, :is_readed, :boolean, default:false
  end
end
