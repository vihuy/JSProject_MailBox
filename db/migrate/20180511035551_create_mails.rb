class CreateMails < ActiveRecord::Migration[5.1]
  def change
    create_table :mails do |t|
      t.belongs_to :user
      t.belongs_to :category
      t.datetime :date
      t.string :subject
      t.text :content
      t.boolean :status, default:true
      t.timestamps
    end
  end
end
