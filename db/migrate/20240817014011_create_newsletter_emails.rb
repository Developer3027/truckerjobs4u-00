class CreateNewsletterEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :newsletter_emails do |t|
      t.string :email
      t.boolean :pp_check, default: true

      t.timestamps
    end
  end
end
