require 'mailer'

class TimesheetMailer < Mailer
  def report_daily(user, timesheet, total)
    recipients = user.mail
	if timesheet.date_from == timesheet.date_to then
    	subject = "Daily Report: #{user.firstname} #{user.lastname}, #{timesheet.date_from}"
	else
    	subject = "Weekly Report: #{user.firstname} #{user.lastname}, #{timesheet.date_from} - #{timesheet.date_to}"
	end

    @user = user
    @timesheet = timesheet
    @total = total
    @precision = 2

	Setting.plain_text_mail = 1
    mail :to => recipients,
		 :subject => subject
	Setting.plain_text_mail = 0
  end
end
