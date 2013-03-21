class SmsGatewayController < ApplicationController 
  
  def inject    
    STDOUT.sync = true unless ENV['RAILS_ENV'] == 'production' # flush all log messages to STDOUT
    logger = Logger.new(STDOUT)
    logger.info "begin to parse the incoming sms..."
        
    # Assume user always registers from the web app for the alpha test
    logger.info "Report Submission"

    board = params[:board]
    text = params[:text]
    phone_number = params[:origin]
    logger.info "board = " + params[:board]
    logger.info "phone_number = " + params[:origin]
    logger.info "text = " + params[:text]
  
    logger.info "identifying the user"
    user = User.find_by_phone_number(phone_number)

    if user
      parsed_result = text.scan(/^(.+)@(.+)$/)
      
      if parsed_result.count == 0
        logger.info "incorrect report format"
        ReportReader.incomplete_information_notification(user.email).delivers
        Notification.new(:phone => phone_number.to_s, :text => "I am sorry, but the format must be: report@address", :board => board.to_s).save      
      else
        logger.info "successfully extracted report and address"
        report = parsed_result[0][0]
        address = parsed_result[0][1]

        logger.info "report: #{report}, address: #{address}"
        logger.info "try to see if an address already exist, if not create it"
        location = Location.find_or_create(address)
        logger.info "location: #{location}"

        report_obj = Report.create_from_user(report, :status => :reported, :reporter => user, :location => location, :before_photo => nil)
        if report_obj.save 
          logger.info "new report sucessfully added"
          ReportReader.report_added_notification(user.email).deliver
          Notification.new(:phone => phone_number.to_s, :text => "Congratulation! your report has been processed and added to our database", :board => board.to_s).save
        else
          logger.info "new report failed to add"
          ReportReader.report_failed_notification(user.email).deliver
          Notification.new(:phone => phone_number.to_s, :text => "Something went wrong in our system. We were unable to add your report", :board => board.to_s).save
        end
      end
    else
      logger.info "this user does not have an account, need to register"
      Notification.new(:phone => phone_number.to_s, :text => "I am sorry, but you do not have an account. Please register", :board => board.to_s).save
    end

    render :text => "OK"
  end
  
  def notifications
    STDOUT.sync = true unless ENV['RAILS_ENV'] == 'production' # flush all log messages to STDOUT
    logger = Logger.new(STDOUT)
    logger.info "retreiving notifications..."
    logger.info "board = " + params[:board]
    
    notifications = Notification.where("board = ?", params[:board])
    result = ""
    
    notifications.each do |notification|
      result = result + "#{notification.id}, #{notification.phone}, #{notification.text}\n"
    end
    
    render :text => result
  end
  
  def remove
    STDOUT.sync = true unless ENV['RAILS_ENV'] == 'production' # flush all log messages to STDOUT
    logger = Logger.new(STDOUT)
    logger.info "removing notifications from database..." 
    logger.info "board = " + params[:board]
    logger.info "ids = " + params[:id]
    
    list_of_ids = params[:id].split(",")
  
    list_of_ids.each do |id|
      notification = Notification.find(id)
      if notification.board == params[:board]
        notification.delete
      end
    end
    
    render :text => "OK"
  end
end


