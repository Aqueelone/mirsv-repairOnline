#   class ApplicationController
#   Copyright (c) 2015-2016, Sergy Nazarevich.
#   This file is licensed under the Common Domain General Public License.

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale
 
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end
end
