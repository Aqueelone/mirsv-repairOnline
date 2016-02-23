class SiteMailer < ActionMailer::Base
  helper :application
  include Devise::Controllers::UrlHelpers
  default from: 'admin@sitesupport.com'
end
