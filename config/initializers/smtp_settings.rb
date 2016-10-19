#ActionMailer::Base.smtp_settings = {
#    :address => "smtp.gmail.com",
 #   :port => 587,
  #   :user_name => "bhattkanchan123@gmail.com",
   #authentication => "plain",
    #:enable_starttls_auto => true,
    #:openssl_verify_mode => 'none'
#}




ActionMailer::Base.smtp_settings = {
     :address     =>  "smtp.gmail.com",
     :port        =>        587,
     :domain      =>         'gmail.com',
     :user_name   =>         "bhattkanchan123@gmail.com",
     :password    =>         "ogskkaxgprryibtc",
     :enable_starttls_auto => true  ,
    :authentication => :login
     
   }
