class AddAttendeesAndEmailReminderToPlaydates < ActiveRecord::Migration
  def change
    add_column :playdates, :attendees, :integer
    add_column :playdates, :email_reminder, :boolean
  end
end
