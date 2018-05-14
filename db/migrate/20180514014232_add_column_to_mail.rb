class AddColumnToMail < ActiveRecord::Migration[5.1]
  def change
    add_column :mails, :object_id, :bigint
  end
end
